package com.squirrel.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Description:登陆
 *
 * @author machine
 * @date 2017年08月12日
 */
@Controller
@RequestMapping("/")
public class LoginController {


	/**
	 * @Description: list
	 *
	 * @author machine
	 * @date 2017年08月18日
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "/index";
	}

	/**
	 * @Description: list
	 *
	 * @author machine
	 * @date 2017年08月18日
	 */
	@RequestMapping(value = "/login/", method = RequestMethod.GET)
	public String login() {
		return "/login";
	}

	/**
	 * @Description: list
	 *
	 * @author machine
	 * @date 2017年08月18日
	 */
	@RequestMapping(value = "/loginVerify/", method = RequestMethod.GET)
	public String loginVerify() {
		return "/login";
	}



}
