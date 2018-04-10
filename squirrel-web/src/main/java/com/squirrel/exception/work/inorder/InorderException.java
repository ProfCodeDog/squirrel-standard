package com.squirrel.exception.work.inorder;

import com.squirrel.base.exception.BusinessException;

/**
 * @Description: 入库单异常
 *
 * @author machine
 * @date 2018年1月11日 下午5:42:42
 */
@SuppressWarnings("serial")
public class InorderException extends BusinessException {

	/**
	 * @Description: 业务处理异常
	 * @param code(异常编码)
	 * @param msg(异常信息)
	 * @param args(异常方法处理参数)
	 */
	public InorderException(String code, String msg, Object... args) {
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
	public InorderException(String code, String msg, String nativeMsg, Throwable cause) {
		super(code, msg, nativeMsg, cause);
	}

	public InorderException() {
		super();
	}

	public InorderException(String code, Object... args) {
		super(code, args);
	}

	public InorderException(String code, String msg, String nativeMsg) {
		super(code, msg, nativeMsg);
	}

	public InorderException(String code, String msg, Throwable cause) {
		super(code, msg, cause);
	}

	public InorderException(String code, String msg) {
		super(code, msg);
	}

	public InorderException(String msg, Throwable cause) {
		super(msg, cause);
	}

	public InorderException(String msg) {
		super(msg);
	}

}
