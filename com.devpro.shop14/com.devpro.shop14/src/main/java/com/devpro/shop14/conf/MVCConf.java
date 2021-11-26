package com.devpro.shop14.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.devpro.shop14.dto.Constants;

@Configuration // -> bao spring biet day la file cau hinh cho MVC
public class MVCConf implements WebMvcConfigurer, Constants {

	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		//classpath <-> src/main/resources
		registry.addResourceHandler("/user/**").addResourceLocations("classpath:/user/");
		registry.addResourceHandler("/manager/**").addResourceLocations("classpath:/manager/");
		
		//MVCConf để cấu hình các file tĩnh, như ảnh,css
		registry.addResourceHandler("/upload/**").addResourceLocations("file:" + UPLOAD_FILE_ROOT);
	}
	
	@Bean // -> bao spring biet folder chua view
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class); //view engine dung de doc data tu controller tra ve va tron voi html code.
		bean.setPrefix("/WEB-INF/views/"); //duong da toi folder chua views(user + manager)
		bean.setSuffix(".jsp"); //duoi file cua view
		return bean;
	}
	
	
}
