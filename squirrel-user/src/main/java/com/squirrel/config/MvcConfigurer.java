package com.squirrel.config;

import org.springframework.core.Ordered;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @Description: MvcConfigurer
 *
 * @author machine
 * @date 2017年12月27日 下午2:34:44
 */
@Configuration
public class MvcConfigurer extends WebMvcConfigurerAdapter {
	/**
	 * @Description: @Description: 设置服务的首页
	 *
	 * @author machine
	 * @date 2017年12月27日 下午2:35:02
	 */
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/").setViewName("forward:/index.html");
		registry.setOrder(Ordered.HIGHEST_PRECEDENCE);
		super.addViewControllers(registry);
	}
}
