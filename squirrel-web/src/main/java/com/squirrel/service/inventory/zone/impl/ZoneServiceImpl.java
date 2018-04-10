package com.squirrel.service.inventory.zone.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.squirrel.dao.inventory.zone.IZoneDao;
import com.squirrel.entity.invertory.zone.ZoneEntity;
import com.squirrel.service.inventory.zone.IZoneService;

/**
 * @Description: 库区
 *
 * @author machine
 * @date 2017年12月27日 下午7:06:56
*/

@Service(value="zoneService")
public class ZoneServiceImpl implements IZoneService{

	
	@Resource(name="zoneDao")
	private IZoneDao zoneDao;
	
	/**
	 * @Description: 
	 *
	 * @author machine
	 * @date 2017年12月27日 下午7:09:14
	*/
	@Override
	public List<ZoneEntity> list() {
		return this.zoneDao.findAll();
	}

	/**
	 * @Description: 
	 *
	 * @author machine
	 * @date 2017年12月27日 下午7:09:17
	*/
	@Override
	public boolean add(ZoneEntity zone) {
		return this.zoneDao.doCreate(zone);
	}

}
