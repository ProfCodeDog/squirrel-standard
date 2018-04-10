package com.squirrel.base.envm;

import java.util.HashMap;
import java.util.Map;

/**
 * @Description:
 *
 * @author machine
 * @date 2018年1月12日 下午6:08:43
 */
public enum TableExpreEnum {
	/* 入库---start */
	INORDER("IN", "入库单"), PUTSHELF("PT", "上架单"),
	/* 入库---end */
	/* 出库---start */
	OUTORDER("OT", "出库单"), PICKET("PK", "拣货单"), LOADORDER("LD", "装车单 "),
	/* 出库---end */
	/* 库内---start */
	MOVEDOC("MV", "移位单"), TASK("TK", "作业单"),
	/* 库内---end */
	/* 基础信息---start */
	WAREHOUSR("WH", "仓库"), CARRIER("CR", "承运商"), COMPANY("CM", "公司"), ITEM("SKU", "货品"), PACKAGE("PAC", "包装");
	/* 基础信息---end */
	public String getKey() {
		return key;
	}

	public String getValue() {
		return value;
	}

	/**
	 * @Description: 根据key获取value
	 *
	 * @author machine
	 * @date 2018年1月12日 上午11:51:49
	 */
	public static String getValueByKey(String key) {
		if (kvMap.size() == 0) {
			synchronized (lock) {
				if (kvMap.size() == 0) {
					TableExpreEnum[] enums = TableExpreEnum.values();
					for (int i = 0; i < enums.length; i++) {
						kvMap.put(enums[i].getKey().toString(), enums[i].getValue());
					}
				}
			}
		}
		return kvMap.get(key);
	}

	private TableExpreEnum(String key, String value) {
		this.key = key;
		this.value = value;
	}

	private final String key;
	private final String value;
	private static final Object lock = new Object();
	private static final Map<String, String> kvMap = new HashMap<String, String>();
}
