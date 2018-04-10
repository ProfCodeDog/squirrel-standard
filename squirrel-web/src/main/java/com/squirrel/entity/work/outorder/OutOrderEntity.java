package com.squirrel.entity.work.outorder;

import java.sql.Timestamp;

import com.squirrel.base.entity.BaseEntity;


/**
 * @Description: 出库单实体类
 *
 * @author zhouyongfeng
 * @Timestamp 2018年1月12日 下午5:37:46
*/
@SuppressWarnings("serial")
public class OutOrderEntity extends BaseEntity{
    /* 状态 */
    private String status;
    /* 公司编码 */
    private String companyCode;
    /* 承运商编码 */
    private String carrierCode;
    /* 出库单编码 */
    private String code;
    /* 公司订单编码  */
    private String companyBillCode;
    /* 来源渠道编码 */
    private String sourceChannelCode;
    /* 订单来源渠道 */
    private String billSourceChannel;
    /* 运单号 */
    private String waybillCode;
    /* 单据类型 */
    private String billType;
    /* 订单日期 */
    private Timestamp orderDate;
    /* 预计到货日期 */
    private Timestamp estimateDate;
    /* 出库开始时间 */
    private Timestamp startReceivedDate;
    /* 出库结束时间*/
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
    /* 收货方名称 */
    private String receiveName;
    /* 收货方国家 */
    private String receiveCountry;
    /* 收货方省 */
    private String receiveProvince;
    /* 收货方市 */
    private String receiveCity;
    /* 收货方区 */
    private String receiveArea;
    /* 收货方地址 */
    private String receiveAddress;
    /* 收货方邮政编码 */
    private String receivePostcode;
    /* 收货方电话 */
    private String receiveTelephone;
    /* 收货方手机 */
    private String receiveMobile;
    /* 收货方邮箱 */
    private String receiveEmail;
    /* 出库单描述 */
    private String remarks;
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
	public String getCarrierCode() {
		return carrierCode;
	}
	public void setCarrierCode(String carrierCode) {
		this.carrierCode = carrierCode;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
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
	public String getWaybillCode() {
		return waybillCode;
	}
	public void setWaybillCode(String waybillCode) {
		this.waybillCode = waybillCode;
	}
	public String getBillType() {
		return billType;
	}
	public void setBillType(String billType) {
		this.billType = billType;
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
	public String getReceiveName() {
		return receiveName;
	}
	public void setReceiveName(String receiveName) {
		this.receiveName = receiveName;
	}
	public String getReceiveCountry() {
		return receiveCountry;
	}
	public void setReceiveCountry(String receiveCountry) {
		this.receiveCountry = receiveCountry;
	}
	public String getReceiveProvince() {
		return receiveProvince;
	}
	public void setReceiveProvince(String receiveProvince) {
		this.receiveProvince = receiveProvince;
	}
	public String getReceiveCity() {
		return receiveCity;
	}
	public void setReceiveCity(String receiveCity) {
		this.receiveCity = receiveCity;
	}
	public String getReceiveArea() {
		return receiveArea;
	}
	public void setReceiveArea(String receiveArea) {
		this.receiveArea = receiveArea;
	}
	public String getReceiveAddress() {
		return receiveAddress;
	}
	public void setReceiveAddress(String receiveAddress) {
		this.receiveAddress = receiveAddress;
	}
	public String getReceivePostcode() {
		return receivePostcode;
	}
	public void setReceivePostcode(String receivePostcode) {
		this.receivePostcode = receivePostcode;
	}
	public String getReceiveTelephone() {
		return receiveTelephone;
	}
	public void setReceiveTelephone(String receiveTelephone) {
		this.receiveTelephone = receiveTelephone;
	}
	public String getReceiveMobile() {
		return receiveMobile;
	}
	public void setReceiveMobile(String receiveMobile) {
		this.receiveMobile = receiveMobile;
	}
	public String getReceiveEmail() {
		return receiveEmail;
	}
	public void setReceiveEmail(String receiveEmail) {
		this.receiveEmail = receiveEmail;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "OutOrderEntity [status=" + status + ", companyCode=" + companyCode + ", carrierCode=" + carrierCode + ", code="
				+ code + ", companyBillCode=" + companyBillCode + ", sourceChannelCode=" + sourceChannelCode
				+ ", billSourceChannel=" + billSourceChannel + ", waybillCode=" + waybillCode + ", billType=" + billType
				+ ", orderDate=" + orderDate + ", estimateDate=" + estimateDate + ", startReceivedDate=" + startReceivedDate
				+ ", endReceivedDate=" + endReceivedDate + ", shipName=" + shipName + ", shipCountry=" + shipCountry
				+ ", shipProvince=" + shipProvince + ", shipCity=" + shipCity + ", shipArea=" + shipArea + ", shipAddress="
				+ shipAddress + ", shipPostcode=" + shipPostcode + ", shipTelephone=" + shipTelephone + ", shipMobile="
				+ shipMobile + ", shipEmail=" + shipEmail + ", receiveName=" + receiveName + ", receiveCountry="
				+ receiveCountry + ", receiveProvince=" + receiveProvince + ", receiveCity=" + receiveCity + ", receiveArea="
				+ receiveArea + ", receiveAddress=" + receiveAddress + ", receivePostcode=" + receivePostcode
				+ ", receiveTelephone=" + receiveTelephone + ", receiveMobile=" + receiveMobile + ", receiveEmail="
				+ receiveEmail + ", remarks=" + remarks + "]";
	}
}