package com.squirrel.controller.inventory.zone;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.squirrel.service.inventory.zone.IZoneService;

/**
 * @Description:
 *
 * @author machine
 * @date 2017年12月27日 下午7:03:46
 */
@RestController
@RequestMapping("/squirrel/inventory/zone")
public class ZoneController {

	@Resource(name="zoneService")
	IZoneService zoneService;

	/**
	 * @Description: list
	 *
	 * @author machine
	 * @date 2017年12月18日 上午12:13:29
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public Object list() {
		return this.zoneService.list();
	}

}
