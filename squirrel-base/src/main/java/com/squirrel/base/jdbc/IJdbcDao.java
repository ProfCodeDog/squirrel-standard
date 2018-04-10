package com.squirrel.base.jdbc;

import java.util.Map;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlParameter;

/**
* Description:  jdbcdao 接口定义
 */
public interface IJdbcDao {
	
	/**
	 * 执行存储过程
	 */
	void callProcedure(String pname, Object... objs);
	
	/**
	 * 执行存储过程并将结果包装成一个Map
	 */
	Map<String, Object> callOut(String procedureName, List<SqlParameter> declaredParameters, Object... args);
	
	/**
	 * 执行存储过程，并将结果包装成一个List
	 */
	List<Map<String, Object>> callQuery(String procedureName, Object... values);
	
	/**
	 * 获取JdbcTemplate
	 */
	JdbcTemplate getJdbcTemplate();
	
	
}
