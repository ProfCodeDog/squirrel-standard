package com.squirrel.base.exception;

import java.io.Serializable;

/**
 * @Description: 框架各个层互相调用产生的解析、转换、调用接口错误导致的错误统称交互异常(不需要Try..Catch)
 *
 * @author machine
 * @date 2018年1月11日 下午3:30:34
*/
@SuppressWarnings("serial")
public abstract class GeneralException extends RuntimeException implements Serializable,IException {
    
	/* 异常code */
	protected String errCode;
	/* 异常信息 */
	private String nativeMsg;
	/* 异常 arguments */
	private Object[] arguments;
    

    public GeneralException() {
        super();
    }
    
    public GeneralException(String msg) {
        super(msg);
    }
    
    public GeneralException(Throwable cause) {
        super(cause);
    }
    
    public GeneralException(String message, Throwable cause) {
        super(message, cause);
    }
    
    public GeneralException(Throwable cause,String nativeMsg) {
        super(cause);
        this.nativeMsg = nativeMsg;
    }
    
    public GeneralException(String msg,String nativeMsg) {
        super(msg);
        this.nativeMsg = nativeMsg;
    }
    
    public GeneralException(String message, Throwable cause,String nativeMsg) {
        super(message, cause);
        this.nativeMsg = nativeMsg;
    }
    
    public GeneralException(String errCode, String message, Throwable cause, Object...arguments) {
    	super(message, cause);
    	this.errCode = errCode;
    	this.arguments = arguments;
    }
    
    public GeneralException(String errCode, String message, Throwable cause,String nativeMsg, Object...arguments) {
    	super(message, cause);
    	this.errCode = errCode;
    	this.arguments = arguments;
    	this.nativeMsg = nativeMsg;
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
