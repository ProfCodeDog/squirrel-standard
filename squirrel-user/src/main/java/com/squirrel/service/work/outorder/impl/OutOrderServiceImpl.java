package com.squirrel.service.work.outorder.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.squirrel.dao.work.outorder.IOutOrderDao;
import com.squirrel.entity.work.outorder.OutOrderEntity;
import com.squirrel.exception.work.inorder.InorderException;
import com.squirrel.service.work.outorder.IOutOrderService;

/**
 * @Description: 出库单Service
 *
 * @author zhouyongfeng
 * @date 2018年1月12日 下午6:30:00
*/
@Service(value = "outOrderService")
public class OutOrderServiceImpl implements IOutOrderService{
	@Resource(name = "outOrderDao")
	private IOutOrderDao outOrderDao;
	
	/**
	 * @Description: 根据id删除出库单
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:54:18
	*/
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int deleteByPrimaryKey(Long id) {
		return this.outOrderDao.deleteByPrimaryKey(id);
	}

	/**
	 * @Description: 插入数据(全字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:26
	*/
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int insert(OutOrderEntity record) {
		int count =  this.outOrderDao.insert(record);
		if (count == 1) {
			return 1;
		} else {
			throw new InorderException("code", "出库单插入失败:", record.toString());
		}
	}

	/**
	 * @Description: 插入数据(部分字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:36
	*/
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int insertSelective(OutOrderEntity record) {
		int count =  this.outOrderDao.insertSelective(record);
		if (count == 1) {
			return 1;
		} else {
			throw new InorderException("code", "出库单插入失败:", record.toString());
		}
	}

	/**
	 * @Description: 根据id查询出库单实体
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:42
	*/
	@Override
	@Transactional(readOnly = true)
	public OutOrderEntity selectByPrimaryKey(Long id) {
		return this.outOrderDao.selectByPrimaryKey(id);
	}

	/**
	 * @Description: 根据实体类更新出库单(部分字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:50
	*/
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int updateByPrimaryKeySelective(OutOrderEntity record) {
		return this.outOrderDao.updateByPrimaryKeySelective(record);
	}

	/**
	 * @Description: 根据实体类更新出库单(全字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:59
	*/
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int updateByPrimaryKey(OutOrderEntity record) {
		return this.outOrderDao.updateByPrimaryKey(record);
	}

}
