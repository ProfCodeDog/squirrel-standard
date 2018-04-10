package com.squirrel.base.dialect;

/**
 * @Description: 方言
 *
 * @author machine
 * @date 2018年1月10日 下午5:14:43
 */
public class Dialect {
	public boolean supportsLimit() {
		return false;
	}

	/**
	 * @Description: 将sql变成分页sql语句,直接使用offset,limit的值作为占位符
	 *
	 * @author machine
	 * @date 2018年1月10日 下午5:15:23
	 */
	public String getLimitString(String sql, int offset, int limit) {
		return getLimitString(sql, offset, Integer.toString(offset), limit, Integer.toString(limit));
	}

	/**
	 * @Description: 将sql变成分页sql语句,提供将offset及limit使用占位符(placeholder)替换
	 * @return 包含占位符的分页sql 
	 * 			dialect.getLimitString("select * from user", 12, ":offset",0,":limit")
	 *          返回 select * from user limit :offset,:limit
	 * @author machine
	 * @date 2018年1月10日 下午5:16:37
	 */
	public String getLimitString(String sql, int offset, String offsetPlaceholder, int limit, String limitPlaceholder) {
		throw new UnsupportedOperationException("paged queries not supported");
	}

}