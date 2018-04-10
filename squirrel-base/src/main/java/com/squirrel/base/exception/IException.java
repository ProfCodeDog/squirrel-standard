package com.squirrel.base.exception;

/**
 * @Description: 异常接口
 *
 * @author machine
 * @date 2018年1月11日 下午3:32:29
*/
public interface IException {
    
	/**
	 * 
	 *  Created on 2014-12-9 
	 * <p>Description:[获取error Code]</p>
	 * @author:王孟
	 * @update:[日期YYYY-MM-DD] [更改人姓名]
	 * @return String .
	 */
    String getErrorCode();
    
    /**
     * 
     *  Created on 2014-12-9 
     * <p>Description:[获取异常信息]</p>
     * @author:王孟
     * @update:[日期YYYY-MM-DD] [更改人姓名]
     * @return String .
     */
    String getNativeMessage();
    
    /**
     * 
     *  Created on 2014-12-9 
     * <p>Description:[设置 error arguments]</p>
     * @author:王孟
     * @update:[日期YYYY-MM-DD] [更改人姓名]
     * @return void .
     */
    void setErrorArguments(Object... objects);
    
    /**
     * 
     *  Created on 2014-12-9 
     * <p>Description:[获取 error arguments]</p>
     * @author:王孟
     * @update:[日期YYYY-MM-DD] [更改人姓名]
     * @return Object[] .
     */
    Object[] getErrorArguments();
    
}
