DROP TABLE IF EXITS `TB_ROLE`;
CREATE TABLE `TB_ROLE`
(
       `id` bigint UNSIGNED NOT NULL COMMENT 'ID',
       `parent_id` bigint UNSIGNED NOT NULL COMMENT '父级角色ID',
       `name` VARCHAR(64) NOT NULL COMMENT '角色名称',
       `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
       `remarks` VARCHAR(255) NOT NULL COMMENT '备注'
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment='角色表';

-- Create/Recreate primary
ALTER TABLE `TB_ROLE` ADD PRIMARY KEY (id);

-- Create/Recreate unique
ALTER TABLE `TB_ROLE` ADD UNIQUE(`parent_id`, `name`);

--新增序列
INSERT INTO sequence SET NAME ='SEQ_ROLE_ID';


INSERT INTO TB_ROLE
  (`id`,`parent_id`,`name`)
VALUES
  (0,0,'SUPER_ADMIN');

INSERT INTO TB_ROLE
  (`id`,`parent_id`,`name`)
VALUES
  (nextval('SEQ_ROLE_ID'),0,'ADMIN');