package com.squirrel.base.interceptor;

import java.lang.reflect.Field;
import java.util.Properties;

import org.apache.ibatis.cache.CacheKey;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;

import com.squirrel.base.dialect.Dialect;
import com.squirrel.base.exception.UnsupportException;
import com.squirrel.base.param.DBParam;

/**
 * @Description: 分页查询切面
 *
 * @author machine
 * @date 2018年1月10日 下午5:23:09
 */
@Intercepts({
		@Signature(type = Executor.class, method = "query", args = { MappedStatement.class, Object.class, RowBounds.class,
				ResultHandler.class }),
		@Signature(type = Executor.class, method = "query", args = { MappedStatement.class, Object.class, RowBounds.class,
				ResultHandler.class, CacheKey.class, BoundSql.class }), })
public class PagedQueryInterceptor implements Interceptor {

	/* 设置方言 */
	private Dialect dialect;

	@Override
	public Object intercept(Invocation invocation) throws Throwable {
		Object[] queryArgs = invocation.getArgs();
		MappedStatement ms = (MappedStatement) queryArgs[0];
		Object parameterObject = queryArgs[1];
		RowBounds rowBounds = (RowBounds) queryArgs[2];
		ResultHandler<?> resultHandler = (ResultHandler<?>) queryArgs[3];
		Executor executor = (Executor) invocation.getTarget();

		CacheKey cacheKey = null;
		BoundSql boundSql = null;
		/* 由于逻辑关系，只会进入一次 */
		if (queryArgs.length == 4) {
			/* 4 个参数时 */
			boundSql = ms.getBoundSql(parameterObject);
			cacheKey = executor.createCacheKey(ms, parameterObject, rowBounds, boundSql);
		} else {
			/* 6 个参数时 */
			cacheKey = (CacheKey) queryArgs[4];
			boundSql = (BoundSql) queryArgs[5];
		}
		/* 拦截处理----start */
		int offset = rowBounds.getOffset();
		int limit = rowBounds.getLimit();
		if (limit != RowBounds.NO_ROW_LIMIT || offset != RowBounds.NO_ROW_OFFSET) {
			/* 替换SQL,加上分页语句 */
			String sql = dialect.getLimitString(boundSql.getSql().trim(), offset, limit);
			/* 反射替换 boundSql的sql属性值 */
			Field nameField = boundSql.getClass().getDeclaredField("sql");
			nameField.setAccessible(true);
			nameField.set(boundSql, sql);
			/* 拦截处理----end */
			return executor.query(ms, parameterObject, new RowBounds(0, limit), resultHandler, cacheKey, boundSql);
		} else {
			return executor.query(ms, parameterObject, rowBounds, resultHandler, cacheKey, boundSql);
		}
	}

	@Override
	public Object plugin(Object target) {
		return Plugin.wrap(target, this);
	}

	@Override
	public void setProperties(Properties properties) {
		String dbSwitch = null;
		String dialectClass = null;

		dbSwitch = properties.getProperty("DB_SWITCH");
		if (DBParam.DB_MYSQL.equals(dbSwitch)) {
			dialectClass = "com.squirrel.base.dialect.MySQLDialect";
		} else if (DBParam.DB_ORACLE.equals(dbSwitch)) {
			dialectClass = "com.squirrel.base.dialect.OracleDialect";
		} else {
			throw new UnsupportException("Database switch settings are not correct(MYSQL or ORACLE)");
		}
		try {
			this.dialect = (Dialect) Class.forName(dialectClass).newInstance();
		} catch (Exception e) {
			throw new RuntimeException("cannot create dialect instance by dialectClass:" + dialectClass, e);
		}
	}
}