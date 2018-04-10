package com.squirrel.base.jdbc;

import java.util.Map;
import java.util.List;
import java.util.HashMap;
import java.sql.ResultSet;
import java.sql.Connection;
import java.util.ArrayList;
import java.sql.SQLException;
import java.sql.CallableStatement;
import java.sql.ResultSetMetaData;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.jdbc.core.CallableStatementCreator;
import org.springframework.jdbc.core.CallableStatementCallback;

/**
 * @Description: jdbcdao
*/
public abstract class JdbcDao extends JdbcDaoSupport implements IJdbcDao {
	/**
	 * 执行存储过程
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public void callProcedure(final String pname, final Object... objs) {
		getJdbcTemplate().execute(new CallableStatementCreator() {
			public CallableStatement createCallableStatement(Connection connection) throws SQLException {
				CallableStatement stmt = connection.prepareCall(pname);
				if (objs != null && objs.length > 0) {
					for (int i = 0, n = objs.length; i < n; i++) {
						stmt.setObject(i + 1, objs[i]);
					}
				}
				return stmt;
			}
		}, new CallableStatementCallback() {
			public Object doInCallableStatement(CallableStatement stmt) throws SQLException, DataAccessException {
				return stmt.execute();
			}
		});
	}

	/**
	 * 执行存数过程，并将out值包装成Map
	 */
	@Override
	public Map<String, Object> callOut(final String procedureName, List<SqlParameter> declaredParameters,
			final Object... args) {
		return (Map<String, Object>) getJdbcTemplate().call(new CallableStatementCreator() {

			@Override
			public CallableStatement createCallableStatement(Connection con) throws SQLException {
				CallableStatement stmt = con.prepareCall(procedureName);
				if (args != null && args.length > 0) {
					for (int i = 0, n = args.length; i < n; i++) {
						stmt.setObject(i + 1, args[i]);
					}
				}
				return stmt;
			}

		}, declaredParameters);
	}

	/**
	 * 执行存储过程，将out值包装成List
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<Map<String, Object>> callQuery(final String procedureName, final Object... values) {
		return (List<Map<String, Object>>) getJdbcTemplate().execute(new CallableStatementCreator() {
			public CallableStatement createCallableStatement(Connection connection) throws SQLException {
				CallableStatement stmt = connection.prepareCall(procedureName);
				if (values != null && values.length > 0) {
					for (int i = 0, n = values.length; i < n; i++) {
						stmt.setObject(i + 1, values[i]);
					}
				}
				return stmt;
			}
		}, new CallableStatementCallback() {
			public Object doInCallableStatement(CallableStatement stmt) throws SQLException, DataAccessException {
				List<Map<String, Object>> results = new ArrayList<Map<String, Object>>();
				ResultSet rs = null;
				try {
					rs = stmt.executeQuery();
					ResultSetMetaData meta = rs.getMetaData();
					int col = meta.getColumnCount();
					while (rs.next()) {
						Map<String, Object> map = new HashMap<String, Object>();
						for (int i = 0; i < col; i++) {
							map.put(meta.getColumnName(i + 1), rs.getObject(i + 1));
						}
						results.add(map);
					}
					return results;
				} finally {
					if (rs != null) {
						rs.close();
					}
				}
			}
		});
	}
}
