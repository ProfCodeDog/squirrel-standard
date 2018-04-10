package com.squirrel.dao.base.nogenerate.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.squirrel.dao.base.nogenerate.INoGenerateDao;
import com.squirrel.entity.base.nogenerate.NoGenerateEntity;

/**
 * @Description: 去单号DAO
 *
 * @author machine
 * @date 2018年1月12日 下午3:32:03
*/
@Repository(value="noGenerateDao")
public class NoGenerateDaoImpl implements INoGenerateDao{
	
	private final SqlSession sqlSession;

	public NoGenerateDaoImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/**
	 * @Description: 插入一条数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:32:11
	*/
	@Override
	public int insert(String billType) {
		return this.sqlSession.insert(NAME_SPACE+"insert", billType);
	}

	/**
	 * @Description: 删除一条数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:32:14
	*/
	@Override
	public int deleteByPrimaryKey(long id) {
		return this.sqlSession.delete(NAME_SPACE+"deleteByPrimaryKey", id);
	}
	
	
	/**
	 * @Description: 删除昨天的数据
	 *
	 * @author machine
	 * @date 2018年1月25日 上午9:49:14
	*/
	@Override
	public int deleteYesterdayData(String billType) {
		return this.sqlSession.delete(NAME_SPACE+"deleteYesterdayData", billType);
	}

	/**
	 * @Description: 更新一条数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:32:17
	*/
	@Override
	public int updateByPrimaryKey(NoGenerateEntity record) {
		return this.sqlSession.update(NAME_SPACE+"updateByPrimaryKey", record);
	}

	/**
	 * @Description: 根据主键查询数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:32:22
	*/
	@Override
	public NoGenerateEntity selectByPrimaryKey(long id) {
		return this.sqlSession.selectOne(NAME_SPACE+"selectByPrimaryKey", id);
	}

	/**
	 * @Description: 根据单据类型查询数据
	 *
	 * @author machine
	 * @date 2018年1月12日 下午3:35:00
	*/
	@Override
	public NoGenerateEntity selectByBillType(String billType) {
		return this.sqlSession.selectOne(NAME_SPACE+"selectByBillType", billType);
	}

	
}
