package com.squirrel.entity.invertory.zone;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
/**
 * @Description: 库区
 *
 * @author machine
 * @date 2017年12月27日 下午6:54:56
 */
@SuppressWarnings("serial")
public class ZoneEntity implements Serializable {

	/* ID */
	private Long id;
	/* 版本 */
	private Integer version = 0;
	/* 状态 */
	private String status;
	/* 库区代码 */
	private String code;
	/* 库区名称 */
	private String name;
	/* 额定最低温度 */
	private BigDecimal lowTemperature;
	/* 额定最高温度 */
	private BigDecimal highTemperature;
	/* x坐标 */
	private BigDecimal xPos;
	/* y坐标 */
	private BigDecimal yPos;
	/* 库区说明 */
	private String description;
	/* 创建人(登录帐号) */
	private String creator;
	/* 创建时间 */
	private Date createTime;
	/* 最后修改人(登录帐号) */
	private String lastOperator;
	/* 修改时间 */
	private Date uodateTime;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getLowTemperature() {
		return lowTemperature;
	}

	public void setLowTemperature(BigDecimal lowTemperature) {
		this.lowTemperature = lowTemperature;
	}

	public BigDecimal getHighTemperature() {
		return highTemperature;
	}

	public void setHighTemperature(BigDecimal highTemperature) {
		this.highTemperature = highTemperature;
	}

	public BigDecimal getxPos() {
		return xPos;
	}

	public void setxPos(BigDecimal xPos) {
		this.xPos = xPos;
	}

	public BigDecimal getyPos() {
		return yPos;
	}

	public void setyPos(BigDecimal yPos) {
		this.yPos = yPos;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getLastOperator() {
		return lastOperator;
	}

	public void setLastOperator(String lastOperator) {
		this.lastOperator = lastOperator;
	}

	public Date getUodateTime() {
		return uodateTime;
	}

	public void setUodateTime(Date uodateTime) {
		this.uodateTime = uodateTime;
	}
}
