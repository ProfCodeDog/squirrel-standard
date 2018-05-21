package com.squirrel.dao.work.inorder;

import com.squirrel.entity.work.inorder.InOrderEntity;

/**
 * @Description: 入库单DAO
 *
 * @author machine
 * @date 2018年1月10日 下午8:45:58
 */
public interface IInOrderDao {

	final static String NAME_SPACE = "com.squirrel.dao.worker.inorder.IInorderDao.";
	

	int deleteByPrimaryKey(Long id);

	/**
	 * @Description: 插入数据
	 *
	 * @author machine
	 * @date 2018年1月11日 下午2:22:40
	*/
	int insert(InOrderEntity record);

	int insertSelective(InOrderEntity record);

	/**
	 * @Description: 根据主键查询入库单
	 *
	 * @author machine
	 * @date 2018年1月10日 下午8:52:59
	*/
	InOrderEntity selectByPrimaryKey(long id);

	int updateByPrimaryKeySelective(InOrderEntity record);

	int updateByPrimaryKey(InOrderEntity record);
}