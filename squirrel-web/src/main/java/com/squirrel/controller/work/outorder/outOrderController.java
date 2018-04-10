package com.squirrel.controller.work.outorder;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.squirrel.entity.work.outorder.OutOrderEntity;
import com.squirrel.service.work.outorder.IOutOrderService;

/**
 * @Description: 出库单
 *
 * @author zhouyongfeng
 * @date 2018年1月13日 上午10:09:44
*/
@RestController
@RequestMapping("/squirrel/work/outorder")
public class outOrderController {
	@Resource(name = "outOrderService")
	IOutOrderService outOrderService;
	
	
	/**
	 * @Description: 根据id查询出库单
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月13日 上午10:14:06
	*/
	@RequestMapping(value = "/getById", method = RequestMethod.GET)
	@ResponseBody
	public OutOrderEntity getById(Long id) {
		return this.outOrderService.selectByPrimaryKey(id);
	}
	
}
