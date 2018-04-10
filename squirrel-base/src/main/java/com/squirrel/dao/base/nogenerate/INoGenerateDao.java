package com.squirrel.dao.base.nogenerate;

import com.squirrel.entity.base.nogenerate.NoGenerateEntity;

/**
 * @Description: 去单号DAO
 *
 * @author machine
 * @date 2018年1月12日 下午3:06:35
*/
public interface INoGenerateDao {

	final static String NAME_SPACE = "com.squirrel.dao.base.nogenerate.INoGenerateDao.";

	/**
	 * @Description: 插入一条数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:06:21
	*/
	int insert(String billType);

	/**
	 * @Description: 删除一条数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:06:23
	*/
	int deleteByPrimaryKey(long id);
	
	/**
	 * @Description: 删除昨天的数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:06:23
	*/
	int deleteYesterdayData(String billType);

	/**
	 * @Description: 更新一条数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:06:26
	*/
	int updateByPrimaryKey(NoGenerateEntity record);

	/**
	 * @Description: 根据主键查询数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:06:31
	*/
	NoGenerateEntity selectByPrimaryKey(long id);
	
	/**
	 * @Description: 根据单据类型查询数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:06:31
	*/
	NoGenerateEntity selectByBillType(String billType);
}
