package com.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.example.interceptor.SessionInterceptor;

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
	public void addViewControllers(ViewControllerRegistry registry){
		registry.addViewController("/500").setViewName("500");
		registry.addViewController("/404").setViewName("404");
		registry.addViewController("/400").setViewName("400");
	}
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/join_icons/**").addResourceLocations("/WEB-INF/join_icons/");
		registry.addResourceHandler("/assets/**").addResourceLocations("/WEB-INF/assets/");
		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/css/");
		registry.addResourceHandler("/bxslider/**").addResourceLocations("/WEB-INF/bxslider/");
		registry.addResourceHandler("/css_images/**").addResourceLocations("/WEB-INF/css/css_images/");
		registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/js/");
		registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/images/");
		registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/img/");
		//네이버 스마트에디터
		registry.addResourceHandler("/smarteditor/**").addResourceLocations("/smarteditor/");
		//스마트에디터 사진 다중 업로드
		registry.addResourceHandler("/photo_upload/**").addResourceLocations("/photo_upload/");
		registry.addResourceHandler("/validation/**").addResourceLocations("/WEB-INF/validation/");
		registry.addResourceHandler("/map/**").addResourceLocations("/WEB-INF/images/map/");
		registry.addResourceHandler("/temp/**").addResourceLocations("/image/dev2/Temp");
		//사진저장실험
		registry.addResourceHandler("/review/**").addResourceLocations("/review/");
		}
	
	//파일업로드를 위한 빈
		@Bean
		public CommonsMultipartResolver multipartResolver(){
			CommonsMultipartResolver resolver = new CommonsMultipartResolver();
			resolver.setDefaultEncoding("utf-8");
			return resolver;
		}
		@Override
		public void addInterceptors(InterceptorRegistry registry){
			registry.addInterceptor(new SessionInterceptor())
			.addPathPatterns("/session/**");
			
		}
		
		
}
