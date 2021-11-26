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
import com.devpro.shop14.dto.SimpleContact;
import com.devpro.shop14.services.CategoriesService;

@Controller
public class CategoryController {
	@Autowired
	private CategoriesService categoriesService;
	
	@RequestMapping(value = { "/category" }, method = RequestMethod.GET) // -> action
	public String contact(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
		
		
		model.addAttribute("categories", categoriesService.findAll());
		
		// cac views se duoc dat tai thu muc: 
		//Nếu mà không có MVCConf
		//return "/src/main/webapp/WEB-INF/views/user/home.jsp";
		return "user/category"; // -> duong dan toi VIEW.
	}
}
