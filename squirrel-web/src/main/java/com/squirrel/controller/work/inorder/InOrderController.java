package com.squirrel.controller.work.inorder;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.squirrel.entity.work.inorder.InOrderEntity;
import com.squirrel.service.work.inorder.IInOrderService;

/**
 * @Description: 入库单
 *
 * @author machine
 * @date 2018年1月10日 下午9:06:19
 */
@RestController
@RequestMapping("/squirrel/work/inorder")
public class InOrderController {
	@Resource(name = "inOrderService")
	IInOrderService iOrderService;

	/**
	 * @Description:
	 *
	 * @author machine
	 * @date 2017年12月18日 上午12:13:29
	 */
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	@ResponseBody
	public InOrderEntity getById(Long id) {
		return iOrderService.selectByPrimaryKey(id);
	}
}
