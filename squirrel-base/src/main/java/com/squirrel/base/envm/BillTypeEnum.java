package com.squirrel.base.envm;

import java.util.Map;
import java.util.HashMap;

/**
 * @Description:单据类型
 *
 * @author machine
 * @date 2018年1月12日 上午10:37:29
 */
public enum BillTypeEnum {
	/* 入库---start */
	INORDER("INORDER", "入库单"), PUTSHELF("PUTSHELF", "上架单"),
	/* 入库---end */
	/* 出库---start */
	OUTORDER("OUTORDER", "出库单"), PICKET("PICKET", "拣货单"), LOADORDER("LOADORDER", "装车单"),
	/* 出库---end */
	/* 库内---start */
	MOVEDOC("MOVEDOC", "移位单"),
	TASK("TASK", "作业单");
	/* 库内---end */

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
					BillTypeEnum[] enums = BillTypeEnum.values();
					for (int i = 0; i < enums.length; i++) {
						kvMap.put(enums[i].getKey().toString(), enums[i].getValue());
					}
				}
			}
		}
		return kvMap.get(key);
	}

	private BillTypeEnum(String key, String value) {
		this.key = key;
		this.value = value;
	}

	private final String key;
	private final String value;
	private static final Object lock = new Object();
	private static final Map<String, String> kvMap = new HashMap<String, String>();
}