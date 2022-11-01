create database `chunyu_mp` default character set utf8mb4 COLLATE utf8mb4_general_ci;
use `chunyu_mp`;

DROP TABLE IF EXISTS `mp_user`;
CREATE TABLE `chunyu_mp`.`mp_user`
(
    `id`          tinyint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增主键',
    `name`        varchar(18)          NOT NULL DEFAULT '无名氏' COMMENT '姓名',
    `age`         tinyint(3) UNSIGNED  NOT NULL DEFAULT 0 COMMENT '年龄',
    `address`     varchar(64)          NOT NULL COMMENT '地址',
    `create_time` datetime             NOT NULL COMMENT '创建时间',
    `update_time` datetime             NOT NULL COMMENT '修改时间',
    `is_deleted`  tinyint(1) UNSIGNED  NOT NULL DEFAULT 0 COMMENT '状态（0：正常；1：删除）',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Mybatis-Plus 用户表';
