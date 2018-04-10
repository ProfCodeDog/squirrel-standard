package com.squirrel.service.base.nogenerate.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.squirrel.base.envm.BillTypeEnum;
import com.squirrel.dao.base.nogenerate.INoGenerateDao;
import com.squirrel.entity.base.nogenerate.NoGenerateEntity;
import com.squirrel.exception.base.BaseException;
import com.squirrel.service.base.nogenerate.INoGenerateService;

/**
 * @Description: 取单号service
 *
 * @author machine
 * @date 2018年1月12日 下午5:04:15
 */

@Service(value = "noGenerateService")
public class NoGenerateServiceImpl implements INoGenerateService {

	@Resource(name = "noGenerateDao")
	private INoGenerateDao noGenerateDao;

	/**
	 * @Description:(不支持连号,重试10次没有取到报异常)
	 *
	 * @author machine
	 * @date 2018年1月12日 下午5:04:55
	 */
	@Override
	public String getNextCode(BillTypeEnum envm) {
		/* 获取单号失败尝试的次数(默认10次) */
		int tryNum = 0;
		NoGenerateEntity entity = null;
		while (true) {
			tryNum++;
			if (tryNum > 10) {
				/* 没有获取到单号抛出异常 */
				throw new BaseException("code", "获取单号失败:", envm.getKey(), envm.getValue());
			}
			entity = this.noGenerateDao.selectByBillType(envm.getKey());
			if (null == entity) {
				/* 没有找到对应的数据则插入一条数据 (每天只会插入一次) */
				try {
					this.noGenerateDao.insert(envm.getKey());
				} catch (Exception e) {
					logger.warn("取号表插入数据失败!  {}:{}", envm.getValue(), envm.getKey());
				}
				/* 删除前一天的数据 */
				this.noGenerateDao.deleteYesterdayData(envm.getKey());
			} else {
				/* 找到了则修改数据 */
				int count = this.noGenerateDao.updateByPrimaryKey(entity);
				if (count == 1) {
					/* 将SerialNo更新为数据库当前的值 */
					entity.setSerialNo(entity.getSerialNo() + 1);
					break;
				}
			}
		}

		if (envm == BillTypeEnum.INORDER) {

			return "";
		} else {
			return "";
		}
	}

	private Logger logger = LoggerFactory.getLogger(NoGenerateServiceImpl.class);
}
