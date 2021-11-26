package com.devpro.shop14.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignInController {
	@RequestMapping(value = { "/sign-in" }, method = RequestMethod.GET) // -> action
	public String contact(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
			throws IOException {
			
		//model.addAttribute("contact", new SimpleContact());
		
		// cac views se duoc dat tai thu muc: 
		//Nếu mà không có MVCConf
		//return "/src/main/webapp/WEB-INF/views/user/home.jsp";
		return "user/signIn"; // -> duong dan toi VIEW.
	}
}
