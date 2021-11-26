package com.devpro.shop14.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop14.entities.ContactEntity;
import com.devpro.shop14.entities.RoleEntity;
import com.devpro.shop14.entities.UserEntity;
import com.devpro.shop14.services.UserService;

@Controller
public class LoginController extends BaseController{
	@Autowired
	UserService userService;
	
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET) // -> action
	public String login(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
			
		//model.addAttribute("contact", new SimpleContact());
		
		// cac views se duoc dat tai thu muc: 
		//Nếu mà không có MVCConf
		//return "/src/main/webapp/WEB-INF/views/user/home.jsp";
		return "login"; // -> duong dan toi VIEW.
	}
	@RequestMapping(value = { "/register" }, method = RequestMethod.GET) // -> action
	public String register(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
			
		model.addAttribute("regis", new UserEntity());
		
		// cac views se duoc dat tai thu muc: 
		//Nếu mà không có MVCConf
		//return "/src/main/webapp/WEB-INF/views/user/home.jsp";
		return "register"; // -> duong dan toi VIEW.
	}
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST) // -> action
	public String saveContact(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @ModelAttribute("regis") UserEntity regis)
			throws IOException {
		//b1: lay thong tin nguoi dung day len
	//	String email = request.getParameter("txtEmail");
	//	String emailFromSpringForm = contact.getTxtEmail(); 
//		String username = regis.getUsername();
//		String password = regis.getPassword();
//		String email = regis.getEmail();
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	    String encodedPassword = passwordEncoder.encode(regis.getPassword());
	    regis.setPassword(encodedPassword);
	    RoleEntity role = new RoleEntity();
	    role.setName("GUEST");
	    role.setDescription("GUEST");
	    regis.addRoles(role);
		//TODO b2: luu thong tin vao csdl
		userService.save(regis);
		//b3: thong bao cho nguoi dung biet da luu thanh cong
		model.addAttribute("thongbao", "Đăng ký thành công");
		
		//return "WEB-INF/views/user/home.jsp";
		return "register"; // -> duong dan toi VIEW.
	}
}
