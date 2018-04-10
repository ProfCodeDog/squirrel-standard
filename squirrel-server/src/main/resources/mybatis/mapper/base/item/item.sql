--drop table TB_ITEM;

-- Create table
create table TB_ITEM
(
  id               number(18),
  version          number(9),
  status           varchar2(16),
  item_id          varchar2(64),
  company_code     varchar2(64),
  code             varchar2(64),
  name             varchar2(255),
  bar_code         varchar2(64),
  item_size        number(9),
  item_version     number(9),
  remarks      	   varchar2(255),
  creator          varchar2(64),
  create_time      timestamp(3),
  last_operator    varchar2(64),
  update_time      timestamp(3)
)tablespace SQUIRREL_SERVER_DATA ;
-- Add comments to the table 
comment on table TB_ITEM
  is '商品表';
-- Add comments to the columns 
comment on column TB_ITEM.id is 'ID';
comment on column TB_ITEM.version is '版本';
comment on column TB_ITEM.status is '状态';
comment on column TB_ITEM.item_id is '商品ID';  
comment on column TB_ITEM.company_code is '公司编码';
comment on column TB_ITEM.code is '商品编码';
comment on column TB_ITEM.name is '商品名称';  
comment on column TB_ITEM.bar_code is '商品条码';
comment on column TB_ITEM.item_size is '商品大小';
comment on column TB_ITEM.item_version is '商品版本';
comment on column TB_ITEM.remarks is '备注';  
comment on column TB_ITEM.creator is '创建人(登录帐号)';
comment on column TB_ITEM.create_time is '创建时间';
comment on column TB_ITEM.last_operator is '最后修改人(登录帐号)';
comment on column TB_ITEM.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_ITEM add constraint PK_ITEM primary key (ID) using index tablespace SQUIRREL_SERVER_DATA;  
  
-- Create/Recreate foreign

-- Create/Recreate default 
ALTER TABLE TB_ITEM MODIFY version DEFAULT 0;
ALTER TABLE TB_ITEM MODIFY item_size DEFAULT 0;
ALTER TABLE TB_ITEM MODIFY item_version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_ITEM ADD CONSTRAINT UK01_ITEM UNIQUE (code) using index tablespace SQUIRREL_SERVER_DATA;
ALTER TABLE TB_ITEM ADD CONSTRAINT UK02_ITEM UNIQUE (item_id) using index tablespace SQUIRREL_SERVER_DATA;
  
--新增序列
create sequence SEQ_ITEM minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_ITEM
(id,version,status,item_id,company_code,code,name,bar_code,item_size,item_version,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_ITEM.nextval,0,'ACTIVE','201801011234123412341234','CM000001','CM000001-BL020101','宝龙1200格桑淡彩白框 宝龙1200格桑淡彩白框','BL020101',72,12,'易碎品,轻拿轻放............','350805',sysdate,'350805',sysdate);