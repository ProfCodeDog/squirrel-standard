package com.squirrel.base.dialect;

/**
 * @Description: MySQL方言
 *
 * @author machine
 * @date 2018年1月10日 下午5:12:47
*/
public class MySQLDialect extends Dialect {

	/**
	 * @Description: 分页
	 *
	 * @author machine
	 * @date 2018年1月10日 下午5:13:11
	*/
	public String getLimitString(String sql, int offset, String offsetPlaceholder, int limit, String limitPlaceholder) {
		if (offset > 0) {
			return new StringBuilder().append(sql).append(" limit ").append(offsetPlaceholder).append(",")
					.append(limitPlaceholder).toString();
		} else {
			return new StringBuilder().append(sql).append(" limit ").append(limitPlaceholder).toString();
		}
	}
}