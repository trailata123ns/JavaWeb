package com.devpro.shop14.controller.user;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop14.dto.ContactTiki;
import com.devpro.shop14.dto.SimpleContact;
@Controller
public class ContactTikiController {
	@RequestMapping(value = { "/lien-he/gui-yeu-cau" }, method = RequestMethod.GET) // -> action
	public String contact(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
			
		model.addAttribute("contactTiki", new ContactTiki());
		
		// cac views se duoc dat tai thu muc: 
		//Nếu mà không có MVCConf
		//return "/src/main/webapp/WEB-INF/views/user/home.jsp";
		return "user/contactTiki"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/lien-he/gui-yeu-cau" }, method = RequestMethod.POST) // -> action
	public String saveContact(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @ModelAttribute("contactTiki") ContactTiki contact,
			@RequestParam("inputFile") MultipartFile[] inputFiles)//inputFile là name bên phần contactTiki.jsp
	
			throws IOException {
		//b1: lay thong tin nguoi dung day len
		//String email = request.getParameter("txtEmail");
		String emailFromSpringForm = contact.getTxtEmail(); 
		
		
		//TODO b2: luu thong tin vao csdl
		
		//b3: thong bao cho nguoi dung biet da luu thanh cong
		model.addAttribute("thongbao", "Cam on ban " +emailFromSpringForm +" da gui thong bao");
		
		//b4:save file
		if(inputFiles.length >0) {
			for(MultipartFile inputFile : inputFiles) { //multipartFile là file trên máy người dùng
				//transferTo là đẩy từ file người dùng đẩy lên lên server
				inputFile.transferTo(new File("D:\\1.HocTap\\JavaWeb- BackEnd\\com.devpro.shop14\\com.devpro.shop14\\uploads\\"
						  +inputFile.getOriginalFilename()));
			}
		}
		
		//return "WEB-INF/views/user/home.jsp";
		return "user/contactTiki"; // -> duong dan toi VIEW.
	}
	
	@RequestMapping(value = { "/contactTiki-ajax" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> contactAjax(final Model model , 
						final HttpServletRequest request, 
						final HttpServletResponse response, 
						final @RequestBody ContactTiki contact) {
		// @Request body để hứng dữ liệu từ ajax đẩy lên
		
		//System.out.println("Contact[Email]: " + contact.getTxtEmail());

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		// 200 <-> thanh cong
		// 500 <-> khong thanh cong
		jsonResult.put("code", 200);
		jsonResult.put("message", "Test "+ contact.getTxtComments());
		return ResponseEntity.ok(jsonResult);
	}

}
