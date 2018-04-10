package com.squirrel.exception.base;

import com.squirrel.base.exception.BusinessException;

/**
 * @Description: 基础模块异常
 *
 * @author machine
 * @date 2018年1月12日 下午6:34:20
 */
@SuppressWarnings("serial")
public class BaseException extends BusinessException {

	/**
	 * @Description: 业务处理异常
	 * @param code(异常编码)
	 * @param msg(异常信息)
	 * @param args(异常方法处理参数)
	 */
	public BaseException(String code, String msg, Object... args) {
		super(code, msg, args);
	}

	/**
	 * @Description: 业务RunTime异常
	 * @param code(异常编码)
	 * @param msg(异常信息)
	 * @param nativeMsg(catch
	 *            异常信息)
	 * @param cause(catch
	 *            异常)
	 */
	public BaseException(String code, String msg, String nativeMsg, Throwable cause) {
		super(code, msg, nativeMsg, cause);
	}

	public BaseException() {
		super();
	}

	public BaseException(String code, Object... args) {
		super(code, args);
	}

	public BaseException(String code, String msg, String nativeMsg) {
		super(code, msg, nativeMsg);
	}

	public BaseException(String code, String msg, Throwable cause) {
		super(code, msg, cause);
	}

	public BaseException(String code, String msg) {
		super(code, msg);
	}

	public BaseException(String msg, Throwable cause) {
		super(msg, cause);
	}

	public BaseException(String msg) {
		super(msg);
	}
}
