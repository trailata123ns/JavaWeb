package com.devpro.shop14.controller.manager;

import java.io.Console;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.controller.user.BaseController;
import com.devpro.shop14.dto.ProductSearch;
import com.devpro.shop14.entities.CategoryEntity;
import com.devpro.shop14.entities.ProductsEntity;
import com.devpro.shop14.services.BaseService;
import com.devpro.shop14.services.CategoriesService;
import com.devpro.shop14.services.ProductService;

@Controller
public class ManagerListProductController extends BaseController{
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "/admin/list-product" }, method = RequestMethod.GET) // -> action
	public String home(final Model model,
			final HttpServletRequest request,
			Integer page,
			final HttpServletResponse response)
			throws IOException {
	//	int page = getCurrentPage(request);
		if(page == null)
		{
			page=1;
		}
	//	long listCount = 15;
		String keyword = request.getParameter("keyword");
		ProductSearch ps = new ProductSearch();
		ps.setKeyword(keyword);
		ps.setPage(page-1);
		
		//Lấy full bản ghi không theo key
		List<ProductsEntity> list = productService.count();
		
		//Lấy tổng số bản ghi
		int listCount = list.size();
		
		//Số trang
		int totalPage=(Integer)listCount/productService.SIZE_OF_PAGE +(listCount % productService.SIZE_OF_PAGE == 0?0:1);
//		if(listCount % productService.SIZE_OF_PAGE == 0) {
//			totalPage +=0;
//		}else {
//			totalPage +=1; 
//		}
//		(lsitCount%sizeOfPage?0:1);
		List<Integer> listPage=new ArrayList<Integer>();
		for(int i=1;i<=totalPage;i++)
		{
			listPage.add(i);
		}
		model.addAttribute("listPage",listPage);
		
		
		//Can lay danh sach product từ db và trả về view qua model
//		List<ProductsEntity> products = productService.findAll();
		
		//Đẩy dữ liệu xuống view thông qua thằng model
		model.addAttribute("products", productService.search(ps));
		
		return "manager/list-product"; // -> duong dan toi VIEW.
	}
	
	
	
	
}
