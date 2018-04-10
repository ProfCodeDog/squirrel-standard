package com.squirrel.entity.work.outorder;

import com.squirrel.base.entity.BaseEntity;

@SuppressWarnings("serial")
public class OutOrderDetailEntity extends BaseEntity{
	/* 发货单 */
    private String outorderCode;
	/* 商品条码 */
    private String itemCode;
	/* 包装单位 */
    private String pacCode;
	/* 数量 */
    private Long quantity;
	/* 供应商 */
    private String suplierCode;
	/* 商品质量 */
    private String itemQuality;
	/* 备注 */
    private String remarks;
	public String getOutorderCode() {
		return outorderCode;
	}
	public void setOutorderCode(String outorderCode) {
		this.outorderCode = outorderCode;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getPacCode() {
		return pacCode;
	}
	public void setPacCode(String pacCode) {
		this.pacCode = pacCode;
	}
	public Long getQuantity() {
		return quantity;
	}
	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}
	public String getSuplierCode() {
		return suplierCode;
	}
	public void setSuplierCode(String suplierCode) {
		this.suplierCode = suplierCode;
	}
	public String getItemQuality() {
		return itemQuality;
	}
	public void setItemQuality(String itemQuality) {
		this.itemQuality = itemQuality;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	@Override
	public String toString() {
		return "OutOrderDetailEntity [outorderCode=" + outorderCode + ", itemCode=" + itemCode + ", pacCode=" + pacCode
				+ ", quantity=" + quantity + ", suplierCode=" + suplierCode + ", itemQuality=" + itemQuality + ", remarks="
				+ remarks + "]";
	}
}