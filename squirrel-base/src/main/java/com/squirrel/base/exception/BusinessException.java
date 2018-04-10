package com.squirrel.base.exception;

import java.io.Serializable;

/**
 * @Description: 业务异常基类(需要业务方法进行Try..Catch)
 *
 * @author machine
 * @date 2018年1月11日 下午3:25:14
 */
@SuppressWarnings("serial")
public abstract class BusinessException extends RuntimeException implements Serializable, IException {

	/* 异常code */
	protected String errCode;
	/* 异常信息 */
	private String nativeMsg;
	/* 异常 arguments */
	private Object[] arguments;

	public BusinessException() {
		super();
	}

	public BusinessException(String msg) {
		super(msg);
	}

	public BusinessException(String msg, Throwable cause) {
		super(msg, cause);
	}

	public BusinessException(String code, String msg) {
		super(msg);
		this.errCode = code;
	}

	public BusinessException(String code, String msg, Throwable cause) {
		super(msg, cause);
		this.errCode = code;
	}

	public BusinessException(String code, String msg, String nativeMsg) {
		super(msg);
		this.errCode = code;
		this.nativeMsg = nativeMsg;
	}

	public BusinessException(String code, String msg, String nativeMsg, Throwable cause) {
		super(msg, cause);
		this.errCode = code;
		this.nativeMsg = nativeMsg;
	}

	public BusinessException(String code, Object... args) {
		super();
		this.errCode = code;
		this.arguments = args;
	}

	public BusinessException(String code, String msg, Object... args) {
		super(msg);
		this.errCode = code;
		this.arguments = args;
	}

	@Override
	public void setErrorArguments(Object... args) {
		this.arguments = args;
	}

	@Override
	public Object[] getErrorArguments() {
		return this.arguments;
	}

	@Override
	public String getErrorCode() {
		return this.errCode;
	}

	@Override
	public String getNativeMessage() {
		return nativeMsg;
	}

}
