package com.squirrel.base.dialect;

/**
 * @Description: ORACLE方言
 *
 * @author machine
 * @date 2018年1月10日 下午5:14:02
 */
public class OracleDialect extends Dialect {

	/**
	 * @Description: 分页
	 *
	 * @author machine
	 * @date 2018年1月10日 下午5:14:08
	 */
	public String getLimitString(String sql, int offset, String offsetPlaceholder, int limit, String limitPlaceholder) {
		String s = sql.trim();
		boolean isForUpdate = false;
		if (s.toLowerCase().endsWith(" for update")) {
			s = s.substring(0, s.length() - 11);
			isForUpdate = true;
		}
		StringBuffer pagingSelect = new StringBuffer(s.length() + 100);
		pagingSelect.append("select * from ( select row_.*, rownum rownum_ from ( ");
		pagingSelect.append(s);
		if (offset > 0) {
			String endString = offsetPlaceholder + "+" + limitPlaceholder;
			pagingSelect.append(" ) row_  where rownum <=").append(endString).append(") where  rownum_ > " + offsetPlaceholder);
		} else {
			pagingSelect.append(" ) row_  where rownum <= ").append(limitPlaceholder).append(") where rownum_ > 0 ");
		}
		if (isForUpdate) {
			pagingSelect.append(" for update");
		}
		return pagingSelect.toString();
	}
}