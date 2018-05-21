package com.squirrel.controller.work.outorder;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.squirrel.entity.work.outorder.OutOrderDetailEntity;
import com.squirrel.service.work.outorder.IOutOrderDetailService;

/**
 * @Description: 出库单
 *
 * @author zhouyongfeng
 * @date 2018年1月13日 上午10:09:44
*/
@RestController
@RequestMapping("/squirrel/work/outorderDetail")
public class outOrderDetailController {
	@Resource(name = "outOrderDetailService")
	IOutOrderDetailService outOrderDeailService;
	
	
	/**
	 * @Description: 根据id查询出库单
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月13日 上午10:14:06
	*/
	@RequestMapping(value = "/getById", method = RequestMethod.GET)
	@ResponseBody
	public OutOrderDetailEntity getById(Long id) {
		return this.outOrderDeailService.selectByPrimaryKey(id);
	}
	
}
