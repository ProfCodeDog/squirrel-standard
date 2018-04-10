package com.squirrel.dao.work.outorder;

import com.squirrel.entity.work.outorder.OutOrderEntity;

/**
 * @Description: 出库单Dao
 *
 * @author zhouyongfeng
 * @date 2018年1月12日 下午6:20:53
*/
public interface IOutOrderDao {
	
	final static String NAME_SPACE = "com.squirrel.dao.work.outorder.IOutOrderDao.";
	
    /**
     * @Description: 根据id删除出库单
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:21:16
    */
    int deleteByPrimaryKey(long id);

    /**
     * @Description: 插入数据(全字段)
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:21:30
    */
    int insert(OutOrderEntity record);

    /**
     * @Description: 插入数据(部分字段)
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:21:52
    */
    int insertSelective(OutOrderEntity record);

    /**
     * @Description: 根据id查询出库单实体
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:22:28
    */
    OutOrderEntity selectByPrimaryKey(long id);

    /**
     * @Description: 根据实体类更新出库单(部分字段)
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:22:41
    */
    int updateByPrimaryKeySelective(OutOrderEntity record);

    /**
     * @Description: 根据实体类更新出库单(全字段)
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:25:08
    */
    int updateByPrimaryKey(OutOrderEntity record);
}