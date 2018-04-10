package com.squirrel.base.exception;

import java.io.Serializable;

/**
 * @Description: 系统不支持功能异常(不需要Try..Catch)
 *
 * @author machine
 * @date 2018年1月11日 下午4:38:54
*/
@SuppressWarnings("serial")
public class UnsupportException  extends RuntimeException implements Serializable,IException{
	/* 异常code */
	protected String errCode;
	/* 异常信息 */
	private String nativeMsg;
	/* 异常 arguments */
	private Object[] arguments;
	
	public UnsupportException() {
		super();
	}

	public UnsupportException(String msg) {
		super(msg);
	}

	public UnsupportException(String msg, Throwable cause) {
		super(msg, cause);
	}

	public UnsupportException(String code, String msg) {
		super(msg);
		this.errCode = code;
	}

	public UnsupportException(String code, String msg, Throwable cause) {
		super(msg, cause);
		this.errCode = code;
	}

	public UnsupportException(String code, String msg, String nativeMsg) {
		super(msg);
		this.errCode = code;
		this.nativeMsg = nativeMsg;
	}

	public UnsupportException(String code, String msg, String nativeMsg, Throwable cause) {
		super(msg, cause);
		this.errCode = code;
		this.nativeMsg = nativeMsg;
	}

	public UnsupportException(String code, Object... args) {
		super();
		this.errCode = code;
		this.arguments = args;
	}

	public UnsupportException(String code, String msg, Object... args) {
		super(msg);
		this.errCode = code;
		this.arguments = args;
	}
	
	
	@Override
    public String getErrorCode() {
        return errCode;
    }
    
    @Override
    public void setErrorArguments(Object... args) {
        this.arguments = args;
    }
    
    @Override
    public String getNativeMessage() {
        return this.nativeMsg;
    }
    
    @Override
    public Object[] getErrorArguments() {
        return this.arguments;
    }

}
