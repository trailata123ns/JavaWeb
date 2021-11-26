package com.devpro.shop14.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.dto.Cart;
import com.devpro.shop14.dto.CartItem;
import com.devpro.shop14.dto.CartNumber;
import com.devpro.shop14.entities.CategoryEntity;
import com.devpro.shop14.entities.ProductsEntity;
import com.devpro.shop14.services.ProductService;

@Controller
public class DetailController {
	@Autowired
	private ProductService productService;
	
//	@RequestMapping(value = { "/detail" }, method = RequestMethod.GET) // -> action
//	//Method: POST: thêm
//	//		: PUT: sửa
//	//		: DELETE: xóa
//	//		: GET : hiển thị dữ liệu
//	public String detail(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse response)
//			throws IOException {
//		
//		// cac views se duoc dat tai thu muc: 
//		//Nếu mà không có MVCConf
//		//return "WEB-INF/views/user/home.jsp";
//		return "user/detail"; // -> duong dan toi VIEW.
//	}
	
	@RequestMapping(value = { "/detail/{productId}" }, method = RequestMethod.GET) // -> action
	public String editProduct(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("productId") int productId)
			throws IOException {
		
		//Lấy sp từ db
		ProductsEntity product = productService.getById(productId);
	//	CartNumber cartNumber=new CartNumber();
//		cartNumber.setProductNumber(1);
//		model.addAttribute("cart", cartNumber);
		//Can lay danh sach category từ db và trả về view qua model
//		List<CategoryEntity> categories = categoriesService.findAll();
				
		//Đẩy dữ liệu xuống view thông qua thằng model
//		model.addAttribute("categories",categories);
//		int number = Integer.parseInt(request.getParameter("number"));
//		model.addAttribute("number",number);
		
		model.addAttribute("product",product);
		return "user/detail"; // -> duong dan toi VIEW.
	}
}
