package com.devpro.shop14.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.services.CategoriesService;
import com.devpro.shop14.services.ProductService;

@Controller // -> controller
public class HomeController extends BaseController{
	
	@Autowired
	private CategoriesService categoriesService;
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value = { "/home" }, method = RequestMethod.GET) // -> action
	//Method: POST: thêm
	//		: PUT: sửa
	//		: DELETE: xóa
	//		: GET : hiển thị dữ liệu
	public String home(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
		
		model.addAttribute("categories", categoriesService.findAll());
		
		model.addAttribute("products", productService.findAll());
		// cac views se duoc dat tai thu muc: 
		//Nếu mà không có MVCConf
		//return "WEB-INF/views/user/home.jsp";
		return "user/home"; // -> duong dan toi VIEW.
	}

}
