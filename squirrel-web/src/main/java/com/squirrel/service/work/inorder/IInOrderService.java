package com.squirrel.service.work.inorder;

import com.squirrel.entity.work.inorder.InOrderEntity;

/**
 * @Description: 入库单
 *
 * @author machine
 * @date 2018年1月10日 下午9:00:32
 */
public interface IInOrderService {

	/**
	 * @Description: 根据主键查询入库单
	 *
	 * @author machine
	 * @date 2018年1月10日 下午9:01:28
	 */
	InOrderEntity selectByPrimaryKey(Long id);
	
	/**
	 * @Description: 插入单条数据
	 *
	 * @author machine
	 * @date 2018年1月11日 下午2:27:44
	*/
	int insert(InOrderEntity record);
}
