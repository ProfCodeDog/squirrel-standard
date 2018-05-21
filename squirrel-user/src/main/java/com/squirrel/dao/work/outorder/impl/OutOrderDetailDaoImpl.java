package com.squirrel.dao.work.outorder.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.squirrel.dao.work.outorder.IOutOrderDetailDao;
import com.squirrel.entity.work.outorder.OutOrderDetailEntity;

/**
 * @Description: 出库单明细Dao
 *
 * @author zhouyongfeng
 * @date 2018年1月12日 下午6:56:45
*/
@Repository(value = "outOrderDetailDao")
public class OutOrderDetailDaoImpl implements IOutOrderDetailDao{

	private final SqlSession sqlSession;

	/** 
	 * @Description: bean注入
	 * 
	 * @param sqlSession 
	 */
	public OutOrderDetailDaoImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/**
	 * @Description: 根据id删除出库单明细
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:54:18
	*/
	@Override
	public int deleteByPrimaryKey(long id) {
		return this.sqlSession.delete(NAME_SPACE+"deleteByPrimaryKey",id);
	}

	/**
	 * @Description: 插入数据(全字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:26
	*/
	@Override
	public int insert(OutOrderDetailEntity record) {
		return this.sqlSession.insert(NAME_SPACE+"insert", record);
	}

	/**
	 * @Description: 插入数据(部分字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:36
	*/
	@Override
	public int insertSelective(OutOrderDetailEntity record) {
		return this.sqlSession.insert(NAME_SPACE+"insertSelective", record);
	}

	/**
	 * @Description: 根据id查询出库单明细实体
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:42
	*/
	@Override
	public OutOrderDetailEntity selectByPrimaryKey(long id) {
		return this.sqlSession.selectOne(NAME_SPACE+"selectByPrimaryKey", id);
	}

	/**
	 * @Description: 根据实体类更新出库单明细(部分字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:50
	*/
	@Override
	public int updateByPrimaryKeySelective(OutOrderDetailEntity record) {
		return this.sqlSession.update(NAME_SPACE+"updateByPrimaryKeySelective", record);
	}

	/**
	 * @Description: 根据实体类更新出库单明细(全字段)
	 *
	 * @author zhouyongfeng
	 * @date 2018年1月12日 下午6:55:59
	*/
	@Override
	public int updateByPrimaryKey(OutOrderDetailEntity record) {
		return this.sqlSession.update(NAME_SPACE+"updateByPrimaryKey", record);
	}

}
