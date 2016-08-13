package org.khmerslide.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class MvcConfiguration extends WebMvcConfigurerAdapter {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		//admin controller
		registry.addViewController("/").setViewName("/home");
		registry.addViewController("/home").setViewName("/home");
		registry.addViewController("/index").setViewName("/index");
		registry.addViewController("/admin").setViewName("/admin/index");
		registry.addViewController("/admin/index").setViewName("/admin/index");
		registry.addViewController("/admin/home").setViewName("/admin/index");
		registry.addViewController("/admin/add-doc").setViewName("/admin/add-doc");
		registry.addViewController("/admin/add-user").setViewName("/admin/add-user");
		registry.addViewController("/admin/doc-user").setViewName("/admin/category");
		registry.addViewController("/admin/comment").setViewName("/admin/comment");
		registry.addViewController("/admin/comfirm-doc").setViewName("/admin/comfirm-doc");
		registry.addViewController("/admin/doc-list").setViewName("/admin/doc-list");
		registry.addViewController("/admin/edit-doc").setViewName("/admin/edit-doc");
		registry.addViewController("/admin/edit-user").setViewName("/admin/edit-user");
		registry.addViewController("/admin/login").setViewName("/admin/login");
		registry.addViewController("/admin/profile").setViewName("/admin/profile");
		registry.addViewController("/admin/save-list").setViewName("/admin/save-list");
		registry.addViewController("/admin/user-list").setViewName("/admin/user-list");
		
		//user controller
		registry.addViewController("/user").setViewName("/user/index");
		registry.addViewController("/user/index").setViewName("/user/index");
		registry.addViewController("/user/home").setViewName("/user/index");
		registry.addViewController("user/login").setViewName("/user/login");
		registry.addViewController("/user/my-document").setViewName("/user/my-document");
		registry.addViewController("/user/profile").setViewName("/user/profile");
		registry.addViewController("/user/save-list").setViewName("/user/save-list");
		registry.addViewController("/user/upload-file").setViewName("/user/upload-file");
		registry.addViewController("/user/view-history").setViewName("/user/view-history");
		
		// Errors
		registry.addViewController("/404").setViewName("/error/404");
		

	}
	
	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**")
				.allowedMethods("GET","POST","DELETE","PUT","OPTIONS","PATCH")
				.allowedOrigins("*");
	}
	
}
