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
public class ManagerAddCategoryController {
	@Autowired
	private CategoriesService categoriesService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "/admin/add-category" }, method = RequestMethod.GET) // -> action
	public String addCategory(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
		
		//Can lay danh sach category từ db và trả về view qua model
		//List<CategoryEntity> categories = categoriesService.findAll();
				
		//Đẩy dữ liệu xuống view thông qua thằng model
		model.addAttribute("category", new CategoryEntity());
		
		//model.addAttribute("product",new ProductsEntity());
		
		return "manager/add-category"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/admin/add-category" }, method = RequestMethod.POST) // -> action
	public String saveCategory(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @ModelAttribute("category") CategoryEntity category
			)//inputFile là name bên phần contactTiki.jsp
			throws Exception {
		if(category.getId() == null|| category.getId() <= 0 ) {
			//Luu product vao db
			categoriesService.save(category);
			
		}else {
			categoriesService.edit(category);
		}
		
		

		//return "WEB-INF/views/user/home.jsp";
	//	return "manager/add-category"; // -> duong dan toi VIEW.
		return "redirect:/admin/categories";
	}
	
	@RequestMapping(value = { "/admin/edit-category/{categoryId}" }, method = RequestMethod.GET) // -> action
	public String editCategory(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @ModelAttribute("category") CategoryEntity category,
			@PathVariable("categoryId") int categoryId
			)//inputFile là name bên phần contactTiki.jsp
			throws Exception {
		//Lấy dữ liệu từ db
		CategoryEntity categories = categoriesService.getById(categoryId);
		model.addAttribute("category", categories);
		
		//categoriesService.save(category);
		

		//return "WEB-INF/views/user/home.jsp";
		return "manager/add-category"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/admin/del-category/{categoryId}" }, method = RequestMethod.GET) // -> action
	public String deleteCategory(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
//			final @ModelAttribute("category") CategoryEntity category,
			@PathVariable("categoryId") int categoryId
			)//inputFile là name bên phần contactTiki.jsp
			throws Exception {
		//Lấy dữ liệu từ db
		CategoryEntity categoriesDelete = categoriesService.getById(categoryId);
		categoriesService.delete(categoriesDelete);
		//model.addAttribute("category", categories);
		
		//categoriesService.save(category);
		

		//return "WEB-INF/views/user/home.jsp";
		return "redirect:/admin/categories"; // -> duong dan toi VIEW.
	}
	
	
}
