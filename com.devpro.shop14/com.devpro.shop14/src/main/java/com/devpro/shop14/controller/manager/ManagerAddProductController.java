package com.devpro.shop14.controller.manager;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop14.dto.ContactTiki;
import com.devpro.shop14.entities.CategoryEntity;
import com.devpro.shop14.entities.ProductsEntity;
import com.devpro.shop14.services.CategoriesService;
import com.devpro.shop14.services.ProductService;

@Controller
public class ManagerAddProductController {
	@Autowired
	private CategoriesService categoriesService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.GET) // -> action
	public String addProduct(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
		
		//Can lay danh sach category từ db và trả về view qua model
		List<CategoryEntity> categories = categoriesService.findAll();
				
		//Đẩy dữ liệu xuống view thông qua thằng model
		model.addAttribute("categories",categories);
		
		model.addAttribute("product",new ProductsEntity());
		
		return "manager/add-product"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/admin/edit-product/{productId}" }, method = RequestMethod.GET) // -> action
	public String editProduct(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("productId") int productId)
			throws IOException {
		
		//Lấy sp từ db
		ProductsEntity product = productService.getById(productId);
		
		//Can lay danh sach category từ db và trả về view qua model
		List<CategoryEntity> categories = categoriesService.findAll();
				
		//Đẩy dữ liệu xuống view thông qua thằng model
		model.addAttribute("categories",categories);
		
		model.addAttribute("product", product);
		
		return "manager/add-product"; // -> duong dan toi VIEW.
	}
	
	
	@RequestMapping(value = { "/admin/add-product" }, method = RequestMethod.POST) // -> action
	public String addProduct(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @ModelAttribute("product") ProductsEntity product,
			@RequestParam("inputAvatar") MultipartFile inputAvatar,
			@RequestParam("inputPictures") MultipartFile[] inputPictures)//inputFile là name bên phần add-product.jsp
			throws Exception {
		
		//Kiểm tra xem là thêm mới hay chỉnh sửa
		if(product.getId() == null || product.getId() <= 0) {
			//Luu product vao db
			productService.save(product, inputAvatar, inputPictures);
		}else {
			productService.edit(product, inputAvatar, inputPictures);
		}
		
		
		
		//return "WEB-INF/views/user/home.jsp";
	//	return "manager/add-product"; // -> duong dan toi VIEW.
		return "redirect:/manager/list-product";
	}
	
	@RequestMapping(value = { "/admin/delete/{productId}" }, method = RequestMethod.GET) // -> action
	public String deleteProduct(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("productId") int productId)
			throws IOException {
		
		//Lấy sp từ db
		ProductsEntity product = productService.getById(productId);
		productService.delete(product);
		//Can lay danh sach category từ db và trả về view qua model
				
		//Đẩy dữ liệu xuống view thông qua thằng model
		
		
		return "redirect:/admin/list-product"; // -> duong dan toi VIEW.
	}
}
