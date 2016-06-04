-- 数据库初始化脚本

-- 创建数据库
drop database if exists SECKILL;
CREATE DATABASE SECKILL;

use seckill;

-- 创建秒杀库存表
CREATE TABLE `seckill` (
`seckill_id`  bigint NOT NULL AUTO_INCREMENT COMMENT '商品库存Id' ,
`name`  varchar(120) NOT NULL COMMENT '商品名称' ,
`number`  int NOT NULL COMMENT '商品数量' ,
`start_time`  timestamp NOT NULL COMMENT '秒杀开始时间' ,
`end_time`  timestamp NOT NULL COMMENT '秒杀结束时间' ,
`create_time`  timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间' ,
PRIMARY KEY (`seckill_id`),
INDEX `idx_start_time` (`start_time`) ,
INDEX `idx_end_time` (`end_time`) ,
INDEX `idx_create_time` (`create_time`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8
COMMENT='秒杀库存表'
AUTO_INCREMENT=1000
;

-- 初始化秒杀表
INSERT INTO
  seckill(name,number,start_time,end_time)
VALUES
('1000元秒杀iPhone6',100,'2016-05-26 00:00:00','2016-06-20 00:00:00'),
('100元秒杀小米note',100,'2016-05-26 00:00:00','2016-06-03 00:00:00'),
('10元秒杀袜子10双',100,'2016-6-26 00:00:00','2016-06-28 00:00:00'),
('1元秒杀指甲刀',100,'2016-05-26 00:00:00','2016-06-20 00:00:00');

-- 创建秒杀详情表
CREATE TABLE seckill_detil(
seckill_id bigint NOT NULL COMMENT '秒杀商品Id',
user_phone VARCHAR(11) NOT NULL COMMENT '用户手机号',
state CHAR(1) NOT NULL COMMENT '秒杀状态：-1：无效 0：成功 1：已付款',
create_time TIMESTAMP COMMENT '创建时间',
PRIMARY KEY (seckill_id,user_phone),
KEY (create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=UTF8 COMMENT='秒杀详情表';
