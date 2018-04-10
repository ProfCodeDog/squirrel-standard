package com.squirrel.service.base.nogenerate;

import com.squirrel.base.envm.BillTypeEnum;

/**
 * @Description: 取单号service
 *
 * @author machine
 * @date 2018年1月12日 下午4:01:59
*/
public interface INoGenerateService {
	String getNextCode(BillTypeEnum envm);
}
