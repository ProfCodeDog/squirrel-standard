package com.squirrel.service.inventory.zone;

import java.util.List;

import com.squirrel.entity.invertory.zone.ZoneEntity;

/**
 * @Description: 库区
 *
 * @author machine
 * @date 2017年12月27日 下午7:05:42
*/
public interface IZoneService {
	
	/**
	 * @Description: 
	 *
	 * @author machine
	 * @date 2017年12月27日 下午7:05:49
	*/
	public List<ZoneEntity> list();

	/**
	 * @Description: 
	 *
	 * @author machine
	 * @date 2017年12月27日 下午7:05:51
	*/
	boolean add(ZoneEntity zone);

}
