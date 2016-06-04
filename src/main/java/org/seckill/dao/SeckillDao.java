package org.seckill.dao;

import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

/**
 * 秒杀商品处理接口
 * Created by Administrator on 2016/6/4.
 */
public interface SeckillDao {

    /**
     * 减库存
     */
    int reduceNumber(long seckillId,Date killTime);

    /**
     * 查询商品列表
     */
    List<Seckill> queryAll(int offet,int limit);

    /**
     * 根据商品Id查询商品详细信息
     */
    Seckill queryById(long seckillId);


}
