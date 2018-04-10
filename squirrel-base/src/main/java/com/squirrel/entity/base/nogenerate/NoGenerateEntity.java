package com.squirrel.entity.base.nogenerate;

import java.io.Serializable;

/**
 * @Description:
 *
 * @author machine
 * @date 2018年1月12日 下午2:32:41
 */
@SuppressWarnings("serial")
public class NoGenerateEntity implements Serializable {
	/* id */
	private long id;
	/* 取号日期(yyyymmdd) */
	private String genDate;
	/* 序号(每天重1开始) */
	private int serialNo;
	/* 单据类型 */
	private String billType;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getGenDate() {
		return genDate;
	}

	public void setGenDate(String genDate) {
		this.genDate = genDate;
	}

	public int getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(int serialNo) {
		this.serialNo = serialNo;
	}

	public String getBillType() {
		return billType;
	}

	public void setBillType(String billType) {
		this.billType = billType;
	}
}
