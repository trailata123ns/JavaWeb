package com.devpro.shop14.controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.dto.SimpleContact;
import com.devpro.shop14.entities.ContactEntity;
import com.devpro.shop14.services.ContactService;

@Controller
public class ContactController extends BaseController{
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET) // -> action
	public String contact(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
			
		model.addAttribute("contact", new ContactEntity());
		
		// cac views se duoc dat tai thu muc: 
		//Nếu mà không có MVCConf
		//return "/src/main/webapp/WEB-INF/views/user/home.jsp";
		return "user/contact"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST) // -> action
	public String saveContact(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @ModelAttribute("contact") ContactEntity contact)
			throws IOException {
		//b1: lay thong tin nguoi dung day len
	//	String email = request.getParameter("txtEmail");
	//	String emailFromSpringForm = contact.getTxtEmail(); 
		String firstName = contact.getFirstName();
		String lastName = contact.getLastName();
		
		//TODO b2: luu thong tin vao csdl
		contactService.save(contact);
		//b3: thong bao cho nguoi dung biet da luu thanh cong
		model.addAttribute("thongbao", "Cảm ơn bạn "+firstName + " "+lastName + " đã gửi thông báo");
		
		//return "WEB-INF/views/user/home.jsp";
		return "user/contact"; // -> duong dan toi VIEW.
	}
	
//	@RequestMapping(value = { "/contact-ajax" }, method = RequestMethod.POST)
//	public ResponseEntity<Map<String, Object>> contactAjax(final Model model , 
//						final HttpServletRequest request, 
//						final HttpServletResponse response, 
//						final @RequestBody SimpleContact contact) {
//		// @Request body để hứng dữ liệu từ ajax đẩy lên
//		
//		System.out.println("Contact[Email]: " + contact.getTxtEmail());
//
//		Map<String, Object> jsonResult = new HashMap<String, Object>();
//		// 200 <-> thanh cong
//		// 500 <-> khong thanh cong
//		jsonResult.put("code", 200);
//		jsonResult.put("message", contact);
//		return ResponseEntity.ok(jsonResult);
//	}
}
