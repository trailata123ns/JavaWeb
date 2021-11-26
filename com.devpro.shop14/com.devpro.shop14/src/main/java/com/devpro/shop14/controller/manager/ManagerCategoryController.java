package com.devpro.shop14.controller.manager;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.controller.user.BaseController;
import com.devpro.shop14.dto.CategorySearch;
import com.devpro.shop14.entities.CategoryEntity;
import com.devpro.shop14.services.CategoriesService;

@Controller
public class ManagerCategoryController extends BaseController{
	
	//inject 1 bean (service) vào trong 1 bean khác(controller) sử dụng @autowired;
	@Autowired
	private CategoriesService categoriesService;
	
	
	@RequestMapping(value = { "/admin/categories" }, method = RequestMethod.GET) // -> action
	//Method: POST: thêm
	//		: PUT: sửa
	//		: DELETE: xóa
	//		: GET : hiển thị dữ liệu
	public String home(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			Integer page)
			throws IOException {
		//int page = getCurrentPage(request);
		if(page==null)
		{
			page= 1;
		}

		//Can lay danh sach category từ db và trả về view qua model
		String keyword =  request.getParameter("keyword");
		CategorySearch categorySearch = new CategorySearch();
		categorySearch.setKeyword(keyword);
		categorySearch.setPage(page - 1);
		
		//Lấy full bản ghi
		List<CategoryEntity> list = categoriesService.count();
		
		//Lấy số lượng bản ghi
		int listCount = list.size();
		
		//Lấy ra số trang
		int totalPage =(Integer)listCount/categoriesService.SIZE_OF_PAGE +(listCount % categoriesService.SIZE_OF_PAGE == 0?0:1);
		
		//Đánh số thứ tự các trang
		List<Integer> listPage = new ArrayList<Integer>();
		for(int i = 1; i <=totalPage;i++) {
			listPage.add(i);
		}
		//Đẩy xuống view để chọn các pagination
		model.addAttribute("listPage", listPage);
		
		//List<CategoryEntity> categories = categoriesService.findAll();
		
		//Đẩy dữ liệu xuống view thông qua thằng model
		model.addAttribute("categories",categoriesService.search(categorySearch));
		//Đẩy xuống rồi thì phải đọc từ view, từ view ta sử dụng jstl để đọc
//		List<CategoryEntity> category = categoriesService.findAll();
//		model.addAttribute("category",category);
		// cac views se duoc dat tai thu muc: 
		//Nếu mà không có MVCConf
		//return "WEB-INF/views/user/home.jsp";
		return "manager/categories"; // -> duong dan toi VIEW.
	}
}
