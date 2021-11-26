package com.devpro.shop14.controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.devpro.shop14.dto.Cart;
import com.devpro.shop14.dto.CartItem;
import com.devpro.shop14.entities.ProductsEntity;
import com.devpro.shop14.entities.SaleOrderEntity;
import com.devpro.shop14.entities.SaleOrderProductsEntity;
import com.devpro.shop14.services.ProductService;
import com.devpro.shop14.services.SaleOrderService;

@Controller
public class CartController extends BaseController {

	@Autowired
	ProductService productService;
	
	@Autowired
	SaleOrderService saleOrderService;
	
	@RequestMapping(value = { "/cart/finish" }, method = RequestMethod.POST) // -> action
	public String cartFinish(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
		
		String customerName = request.getParameter("customerName");
		String customerAddress = request.getParameter("customerAddress");
		String customerPhone = request.getParameter("customerPhone");
		String customerEmail = request.getParameter("customerEmail");
		
		//Tạo hóa đơn
		SaleOrderEntity saleOrderEntity = new SaleOrderEntity();
		saleOrderEntity.setCode(String.valueOf(System.currentTimeMillis()));
		saleOrderEntity.setCustomerName(customerName);
		saleOrderEntity.setCustomerAddress(customerAddress);
		saleOrderEntity.setCustomerPhone(customerPhone);
		saleOrderEntity.setCustomerEmail(customerEmail);
		if(isLogined()) {
			saleOrderEntity.setUser(getUserLogined());
		}
		
		//Lấy các sản phẩm cho vào trong hóa đơn
		HttpSession session = request.getSession();
		Cart cart = (Cart)session.getAttribute("cart");
		for(CartItem cartItem:cart.getCartItems()) {
			SaleOrderProductsEntity saleOrderProductsEntity = new SaleOrderProductsEntity();
			saleOrderProductsEntity.setProduct(productService.getById(cartItem.getProductId()));
			saleOrderProductsEntity.setQuality(cartItem.getQuanlity());
			saleOrderEntity.addRelationProduct(saleOrderProductsEntity);
		}
		saleOrderService.saveOrUpdate(saleOrderEntity);
		model.addAttribute("thongbao", "Cảm ơn bạn đã đặt hàng");
		
		session.setAttribute("cart", null);
		
		return "user/shopping-cart"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/cart/view" }, method = RequestMethod.GET) // -> action
	public String cartView(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
		
		
		
		//model.addAttribute("categories", categoriesService.findAll());
		
		// cac views se duoc dat tai thu muc: 
		//Nếu mà không có MVCConf
		//return "/src/main/webapp/WEB-INF/views/user/home.jsp";
		return "user/shopping-cart"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/cart/add" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addToCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem newItem) {

		// session tương tự như kiểu Map và được lưu trên main memory.
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng.
		Cart cart = null;
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();

		// kiểm tra nếu có trong giỏ hàng thì tăng số lượng
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == newItem.getProductId()) {
				isExists = true;
				item.setQuanlity(item.getQuanlity() + newItem.getQuanlity());
			}
		}

		// nếu sản phẩm chưa có trong giỏ hàng
		if (!isExists) {
			ProductsEntity productInDb = productService.getById(newItem.getProductId());

			newItem.setProductName(productInDb.getTitle());
			newItem.setPriceUnit(productInDb.getPrice());

			cart.getCartItems().add(newItem);
		}
		
		// trả kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("message", "Thêm vào giỏ hàng thành công");
		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}

	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}
	@RequestMapping(value = { "/cart-delete" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteItemInCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem cartItem) {
		HttpSession httpSession = request.getSession();

		Cart cart = (Cart) httpSession.getAttribute("cart");

		List<CartItem> cartItems = cart.getCartItems();
		Double totalPrice = 0d;

		for (int i = 0; i < cartItems.size(); i++) {
			if (cartItems.get(i).getProductId() == cartItem.getProductId()) {
				cartItems.remove(i);
				break;
			}
		}
		for (CartItem item : cartItems) {
			totalPrice += item.getPriceUnit().doubleValue();
		}

		httpSession.setAttribute("totalItems", getTotalItems(request));
		httpSession.setAttribute("totalPrice", totalPrice);
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}
	
}
