package com.squirrel.entity.work.inorder;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @Description: 入库单实体类
 *
 * @author machine
 * @date 2018年1月10日 下午7:59:48
 */
@SuppressWarnings("serial")
public class InOrderEntity implements Serializable {
	/* id */
	private long id;
	/* 版本 */
	private int version = 0;
	/* 状态 */
	private String status;
	/* 公司编码 */
	private String companyCode;
	/* 入库单编码 */
	private String code;
	/* 单据类型 */
	private String billType;
	/* 公司订单编码 */
	private String companyBillCode;
	/* 来源渠道编码 */
	private String sourceChannelCode;
	/* 订单来源渠道 */
	private String billSourceChannel;
	/* 订单日期 */
	private Timestamp orderDate;
	/* 预计到货日期 */
	private Timestamp estimateDate;
	/* 收货开始时间 */
	private Timestamp startReceivedDate;
	/* 收货结束时间 */
	private Timestamp endReceivedDate;
	/* 发货方名称 */
	private String shipName;
	/* 发货方国家 */
	private String shipCountry;
	/* 发货方省 */
	private String shipProvince;
	/* 发货方市 */
	private String shipCity;
	/* 发货方区 */
	private String shipArea;
	/* 发货方地址 */
	private String shipAddress;
	/* 发货方邮政编码 */
	private String shipPostcode;
	/* 发货方电话 */
	private String shipTelephone;
	/* 发货方手机 */
	private String shipMobile;
	/* 发货方邮箱 */
	private String shipEmail;
	/* 备注 */
	private String remarks;
	/* 创建人(登录帐号) */
	private String creator;
	/* 创建时间 */
	private Timestamp createTime;
	/* 最后修改人(登录帐号) */
	private String lastOperator;
	/* 修改时间 */
	private Timestamp updateTime;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getBillType() {
		return billType;
	}

	public void setBillType(String billType) {
		this.billType = billType;
	}

	public String getCompanyBillCode() {
		return companyBillCode;
	}

	public void setCompanyBillCode(String companyBillCode) {
		this.companyBillCode = companyBillCode;
	}

	public String getSourceChannelCode() {
		return sourceChannelCode;
	}

	public void setSourceChannelCode(String sourceChannelCode) {
		this.sourceChannelCode = sourceChannelCode;
	}

	public String getBillSourceChannel() {
		return billSourceChannel;
	}

	public void setBillSourceChannel(String billSourceChannel) {
		this.billSourceChannel = billSourceChannel;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public Timestamp getEstimateDate() {
		return estimateDate;
	}

	public void setEstimateDate(Timestamp estimateDate) {
		this.estimateDate = estimateDate;
	}

	public Timestamp getStartReceivedDate() {
		return startReceivedDate;
	}

	public void setStartReceivedDate(Timestamp startReceivedDate) {
		this.startReceivedDate = startReceivedDate;
	}

	public Timestamp getEndReceivedDate() {
		return endReceivedDate;
	}

	public void setEndReceivedDate(Timestamp endReceivedDate) {
		this.endReceivedDate = endReceivedDate;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public String getShipCountry() {
		return shipCountry;
	}

	public void setShipCountry(String shipCountry) {
		this.shipCountry = shipCountry;
	}

	public String getShipProvince() {
		return shipProvince;
	}

	public void setShipProvince(String shipProvince) {
		this.shipProvince = shipProvince;
	}

	public String getShipCity() {
		return shipCity;
	}

	public void setShipCity(String shipCity) {
		this.shipCity = shipCity;
	}

	public String getShipArea() {
		return shipArea;
	}

	public void setShipArea(String shipArea) {
		this.shipArea = shipArea;
	}

	public String getShipAddress() {
		return shipAddress;
	}

	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	public String getShipPostcode() {
		return shipPostcode;
	}

	public void setShipPostcode(String shipPostcode) {
		this.shipPostcode = shipPostcode;
	}

	public String getShipTelephone() {
		return shipTelephone;
	}

	public void setShipTelephone(String shipTelephone) {
		this.shipTelephone = shipTelephone;
	}

	public String getShipMobile() {
		return shipMobile;
	}

	public void setShipMobile(String shipMobile) {
		this.shipMobile = shipMobile;
	}

	public String getShipEmail() {
		return shipEmail;
	}

	public void setShipEmail(String shipEmail) {
		this.shipEmail = shipEmail;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public String getLastOperator() {
		return lastOperator;
	}

	public void setLastOperator(String lastOperator) {
		this.lastOperator = lastOperator;
	}

	public Timestamp getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	@Override
	public String toString() {
		return "InOrderEntity [id=" + id + ", version=" + version + ", status=" + status + ", companyCode=" + companyCode
				+ ", code=" + code + ", billType=" + billType + ", companyBillCode=" + companyBillCode + ", sourceChannelCode="
				+ sourceChannelCode + ", billSourceChannel=" + billSourceChannel + ", orderDate=" + orderDate
				+ ", estimateDate=" + estimateDate + ", startReceivedDate=" + startReceivedDate + ", endReceivedDate="
				+ endReceivedDate + ", shipName=" + shipName + ", shipCountry=" + shipCountry + ", shipProvince=" + shipProvince
				+ ", shipCity=" + shipCity + ", shipArea=" + shipArea + ", shipAddress=" + shipAddress + ", shipPostcode="
				+ shipPostcode + ", shipTelephone=" + shipTelephone + ", shipMobile=" + shipMobile + ", shipEmail=" + shipEmail
				+ ", remarks=" + remarks + ", creator=" + creator + ", createTime=" + createTime + ", lastOperator="
				+ lastOperator + ", updateTime=" + updateTime + "]";
	}
}
