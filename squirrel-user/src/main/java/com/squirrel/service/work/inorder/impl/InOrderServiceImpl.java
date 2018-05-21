package com.squirrel.service.work.inorder.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.squirrel.dao.work.inorder.IInOrderDao;
import com.squirrel.entity.work.inorder.InOrderEntity;
import com.squirrel.exception.work.inorder.InorderException;
import com.squirrel.service.work.inorder.IInOrderService;

/**
 * @Description: 入库单
 *
 * @author machine
 * @date 2018年1月10日 下午9:01:46
 */
@Service(value = "inOrderService")
public class InOrderServiceImpl implements IInOrderService {
	@Resource(name = "inOrderDao")
	private IInOrderDao inOrderDao;

	@Override
	@Transactional(readOnly = true)
	public InOrderEntity selectByPrimaryKey(Long id) {
		return this.inOrderDao.selectByPrimaryKey(id);
	}

	/**
	 * @Description: 插入单条数据
	 *
	 * @author machine
	 * @date 2018年1月11日 下午2:29:12
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public int insert(InOrderEntity record) {
		int count = this.inOrderDao.insert(record);
		if (count == 1) {
			return 1;
		} else {
			throw new InorderException("code", "入库单插入失败:", record.toString());
		}
	}
}
