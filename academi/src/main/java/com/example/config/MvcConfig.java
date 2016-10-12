package com.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.example.controller")
@EnableWebMvc
public class MvcConfig extends WebMvcConfigurerAdapter {

	@Bean
	public ViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/view/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/join_icons/**").addResourceLocations("/WEB-INF/join_icons/");
		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/css/");
		registry.addResourceHandler("/bxslider/**").addResourceLocations("/WEB-INF/bxslider/");
		registry.addResourceHandler("/css_images/**").addResourceLocations("/WEB-INF/css/css_images/");
		registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/js/");
		registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/images/");
		registry.addResourceHandler("/smarteditor/**").addResourceLocations("/smarteditor/");
		registry.addResourceHandler("/validation/**").addResourceLocations("/WEB-INF/validation/");
	}
	
	//파일업로드를 위한 빈
		@Bean
		public CommonsMultipartResolver multipartResover(){
			CommonsMultipartResolver resolver = new CommonsMultipartResolver();
			resolver.setDefaultEncoding("utf-8");
			return resolver;
		}
}
