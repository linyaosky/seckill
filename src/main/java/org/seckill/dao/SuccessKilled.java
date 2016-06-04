package org.seckill.dao;

/**
 * Created by Administrator on 2016/6/4.
 */
public interface SuccessKilled {

    /**
     * 插入秒杀详情
     */
    int insertSuccessKilled(long seckillId,String userPhone);

    /**
     *按照Id查询秒杀详情
     */
    SuccessKilled queryByIdWithseckill(long seckillId);
}
