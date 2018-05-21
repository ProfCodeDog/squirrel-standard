package com.squirrel.service.work.outorder;

import com.squirrel.entity.work.outorder.OutOrderDetailEntity;

/**
 * @Description: 出库单明细Dao
 *
 * @author zhouyongfeng
 * @date 2018年1月12日 下午6:26:28
*/
public interface IOutOrderDetailService {
	
    /**
     * @Description: 根据id删除出库单明细
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:21:16
    */
    int deleteByPrimaryKey(Long id);

    /**
     * @Description: 插入数据(全字段)
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:21:30
    */
    int insert(OutOrderDetailEntity record);

    /**
     * @Description: 插入数据(部分字段)
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:21:52
    */
    int insertSelective(OutOrderDetailEntity record);

    /**
     * @Description: 根据id查询出库单明细实体
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:22:28
    */
    OutOrderDetailEntity selectByPrimaryKey(Long id);

    /**
     * @Description: 根据实体类更新出库单明细(部分字段)
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:22:41
    */
    int updateByPrimaryKeySelective(OutOrderDetailEntity record);

    /**
     * @Description: 根据实体类更新出库单明细(全字段)
     *
     * @author zhouyongfeng
     * @date 2018年1月12日 下午6:25:08
    */
    int updateByPrimaryKey(OutOrderDetailEntity record);
}