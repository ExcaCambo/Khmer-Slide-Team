package org.khmerslide.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class MvcConfiguration extends WebMvcConfigurerAdapter {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/").setViewName("/home");
		registry.addViewController("/home").setViewName("/home");
		registry.addViewController("/index").setViewName("/index");
//		registry.addViewController("/about").setViewName("/about");
		registry.addViewController("/admin").setViewName("/admin/index");
		registry.addViewController("/admin/index").setViewName("/admin/index");
		registry.addViewController("/admin/home").setViewName("/admin/index");
		registry.addViewController("/admin/user-list").setViewName("/admin/user-list");
		registry.addViewController("/admin/add-user").setViewName("/admin/add-user");
		registry.addViewController("/admin/edit-user").setViewName("/admin/edit-user");
		registry.addViewController("/admin/doc-list").setViewName("/admin/doc-list");
		registry.addViewController("/user").setViewName("/user/index");
		registry.addViewController("/user/index").setViewName("/user/index");
		
		registry.addViewController("/user/home").setViewName("/user/index");
		registry.addViewController("/user/view-history").setViewName("/user/view-history");
//		registry.addViewController("/user").setViewName("/user/user");
//		registry.addViewController("/dba").setViewName("/dba");
		registry.addViewController("/login").setViewName("/login");
		
		registry.addViewController("/swagger").setViewName("/swagger/index");
		
		// Errors
		registry.addViewController("/401").setViewName("/error/401");
		registry.addViewController("/access-denied").setViewName("/error/403");
		

	}
	
	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**")
				.allowedMethods("GET","POST","DELETE","PUT","OPTIONS","PATCH")
				.allowedOrigins("*");
	}
	
}
