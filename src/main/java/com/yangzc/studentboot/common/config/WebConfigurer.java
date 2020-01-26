package com.yangzc.studentboot.common.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
class WebConfigurer implements WebMvcConfigurer {
	@Autowired
	StudentBootConfig studentBootConfig;
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/files/**").addResourceLocations("file:"+studentBootConfig.getUploadPath());
		registry.addResourceHandler("swagger-ui.html").
				addResourceLocations("classpath:/META-INF/resources/");//swagger的html文件
		registry.addResourceHandler("/webjars/**").
				addResourceLocations("classpath:/META-INF/resources/webjars/");//swagger的js和css文件
	}

}