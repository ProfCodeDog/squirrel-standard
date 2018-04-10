package com.squirrel.dao.inventory.zone;

import java.util.List;

import com.squirrel.entity.invertory.zone.ZoneEntity;

/**
 * @Description: 库区
 *
 * @author machine
 * @date 2017年12月27日 下午6:38:33
 */
public interface IZoneDao {
	
	final static String NAME_SPACE = "com.squirrel.dao.inventory.zone.IZoneDao.";

	/**
	 * @Description: 
	 *
	 * @author machine
	 * @date 2017年12月27日 下午6:38:59
	*/
	public List<ZoneEntity> findAll();

	/**
	 * @Description: 
	 *
	 * @author machine
	 * @date 2017年12月27日 下午6:39:01
	*/
	public boolean doCreate(ZoneEntity zone);

}
