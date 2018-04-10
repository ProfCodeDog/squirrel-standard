package com.squirrel.base.entity;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @Description: 基础类
 *
 * @author zhouyongfeng
 * @date 2018年1月12日 下午6:04:31
*/
@SuppressWarnings("serial")
public abstract class BaseEntity implements Serializable{
	/* id */
    private long id; 
    /* 版本 */
    private int version;
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
    
}
