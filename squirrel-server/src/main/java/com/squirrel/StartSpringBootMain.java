package com.squirrel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @Description: 应用启动类
 *
 * @author machine
 * @date 2017年12月27日 下午1:52:59
 */
@SpringBootApplication
@EnableTransactionManagement
public class StartSpringBootMain {
	public static void main(String[] args) throws Exception {
		SpringApplication.run(StartSpringBootMain.class, args);
	}
}