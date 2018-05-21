DROP TABLE IF EXITS `TB_USER`;
CREATE TABLE `TB_USER`
(
       `id` bigint UNSIGNED NOT NULL COMMENT 'ID',
       `org_id` bigint UNSIGNED NOT NULL COMMENT '所属组织ID',
       `login_name` VARCHAR(64) NOT NULL COMMENT '登录账号',
       `password` VARCHAR(64) NOT NULL COMMENT '用户密码',
       `user_name` VARCHAR(64) NOT NULL COMMENT '用户姓名',
       `mobile` VARCHAR(32) COMMENT '手机号码',
       `email` VARCHAR(64) COMMENT '电子邮箱',
       `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
       `login_time` TIMESTAMP NULL DEFAULT NULL COMMENT '登录时间',
       `last_login_time` TIMESTAMP NULL DEFAULT NULL  COMMENT '上次登录时间',
       `count` bigint NOT NULL COMMENT '登录次数'
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment='用户表';

-- Create/Recreate primary
ALTER TABLE `TB_USER` ADD PRIMARY KEY (id);

-- Create/Recreate unique
ALTER TABLE `TB_USER` ADD UNIQUE(login_name);
ALTER TABLE `TB_USER` ADD UNIQUE(mobile);
ALTER TABLE `TB_USER` ADD UNIQUE(email);

--新增序列
INSERT INTO sequence SET NAME ='SEQ_USER_ID';


INSERT INTO TB_USER
  (`id`,`org_id`,`login_name`,`password`,`user_name`,`count`)
VALUES
  (nextval('SEQ_USER_ID'),1,'machine','1234@56','陈言山',1);