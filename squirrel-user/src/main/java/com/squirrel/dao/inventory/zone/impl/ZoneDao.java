package com.squirrel.dao.inventory.zone.impl;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.squirrel.dao.inventory.zone.IZoneDao;
import com.squirrel.entity.invertory.zone.ZoneEntity;

@Repository(value="zoneDao")
public class ZoneDao implements IZoneDao{
	
	private final SqlSession sqlSession;
	
	public ZoneDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<ZoneEntity> findAll() {
		int offset = 0;
		int limit = 2;
		RowBounds rowBounds = new RowBounds(offset, limit);
		return this.sqlSession.selectList(NAME_SPACE+"findAll",null,rowBounds);
	}

	@Override
	public boolean doCreate(ZoneEntity zone) {
		return false;
	}
}
