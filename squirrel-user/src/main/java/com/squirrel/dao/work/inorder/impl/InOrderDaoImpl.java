package com.squirrel.dao.work.inorder.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.squirrel.dao.work.inorder.IInOrderDao;
import com.squirrel.entity.work.inorder.InOrderEntity;

/**
 * @Description: 入库单DAO
 *
 * @author machine
 * @date 2018年1月10日 下午8:45:58
 */
@Repository(value="inOrderDao")
public class InOrderDaoImpl implements IInOrderDao {

	private final SqlSession sqlSession;

	public InOrderDaoImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int deleteByPrimaryKey(Long id) {
		return 0;
	}

	/**
	 * @Description: 插入数据
	 *
	 * @author machine
	 * @date 2018年1月11日 下午2:25:05
	*/
	@Override
	public int insert(InOrderEntity record) {
		return this.sqlSession.insert(NAME_SPACE+"insert", record);
	}

	@Override
	public int insertSelective(InOrderEntity record) {
		return 0;
	}

	/**
	 * @Description: 根据主键查询入库单
	 *
	 * @author machine
	 * @date 2018年1月10日 下午8:53:30
	*/
	@Override
	public InOrderEntity selectByPrimaryKey(long id) {
		return this.sqlSession.selectOne(NAME_SPACE+"selectByPrimaryKey", id);
	}

	@Override
	public int updateByPrimaryKeySelective(InOrderEntity record) {
		return 0;
	}

	@Override
	public int updateByPrimaryKey(InOrderEntity record) {
		return 0;
	}

}