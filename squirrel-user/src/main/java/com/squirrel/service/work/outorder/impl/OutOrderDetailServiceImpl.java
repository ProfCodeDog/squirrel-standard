package com.squirrel.service.work.outorder.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.squirrel.dao.work.outorder.IOutOrderDetailDao;
import com.squirrel.entity.work.outorder.OutOrderDetailEntity;
import com.squirrel.exception.work.inorder.InorderException;
import com.squirrel.service.work.outorder.IOutOrderDetailService;

/**
 * @Description: 出库单明细Dao
 *
 * @author zhouyongfeng
 * @date 2018年1月12日 下午6:56:45
*/
@Repository(value = "outOrderDetailService")
public class OutOrderDetailServiceImpl implements IOutOrderDetailService{

	@Resource(name = "outOrderDetailDao")
	private IOutOrderDetailDao outOrderDetailDao;

	/**
	 * @Description: 根据id删除出库单
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:54:18
	*/
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int deleteByPrimaryKey(Long id) {
		return this.outOrderDetailDao.deleteByPrimaryKey(id);
	}

	/**
	 * @Description: 插入数据(全字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:26
	*/
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int insert(OutOrderDetailEntity record) {
		int count =  this.outOrderDetailDao.insert(record);
		if (count == 1) {
			return 1;
		} else {
			throw new InorderException("code", "出库单明细插入失败:", record.toString());
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
	public int insertSelective(OutOrderDetailEntity record) {
		int count =  this.outOrderDetailDao.insertSelective(record);
		if (count == 1) {
			return 1;
		} else {
			throw new InorderException("code", "出库单明细插入失败:", record.toString());
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
	public OutOrderDetailEntity selectByPrimaryKey(Long id) {
		return this.outOrderDetailDao.selectByPrimaryKey(id);
	}

	/**
	 * @Description: 根据实体类更新出库单(部分字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:50
	*/
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int updateByPrimaryKeySelective(OutOrderDetailEntity record) {
		return this.outOrderDetailDao.updateByPrimaryKeySelective(record);
	}

	/**
	 * @Description: 根据实体类更新出库单(全字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:59
	*/
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int updateByPrimaryKey(OutOrderDetailEntity record) {
		return this.outOrderDetailDao.updateByPrimaryKey(record);
	}


}
