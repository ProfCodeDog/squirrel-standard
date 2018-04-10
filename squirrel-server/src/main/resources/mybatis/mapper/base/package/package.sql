--drop table TB_PACKAGE;

-- Create table
create table TB_PACKAGE
(
  id               number(18),
  version          number(9),
  status           varchar2(16),
  item_code        varchar2(64),
  code             varchar2(64),
  name             varchar2(64),
  pack_num         number(9),
  bar_code         varchar2(64),
  remarks      	   varchar2(255),
  creator          varchar2(64),
  create_time      timestamp(3),
  last_operator    varchar2(64),
  update_time      timestamp(3)
)tablespace SQUIRREL_SERVER_DATA ;
-- Add comments to the table 
comment on table TB_PACKAGE is '包装表';
-- Add comments to the columns 
comment on column TB_PACKAGE.id is 'ID';
comment on column TB_PACKAGE.version is '版本';
comment on column TB_PACKAGE.status is '状态';
comment on column TB_PACKAGE.item_code is '商品编码';
comment on column TB_PACKAGE.code is '包装编码';
comment on column TB_PACKAGE.name is '包装名称';  
comment on column TB_PACKAGE.pack_num is '件装量';
comment on column TB_PACKAGE.bar_code is '包装条码';  
comment on column TB_PACKAGE.remarks is '备注';
comment on column TB_PACKAGE.creator is '创建人(登录帐号)';
comment on column TB_PACKAGE.create_time is '创建时间';
comment on column TB_PACKAGE.last_operator is '最后修改人(登录帐号)';
comment on column TB_PACKAGE.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_PACKAGE add constraint PK_PACKAGE primary key (id) using index tablespace SQUIRREL_SERVER_DATA;  
  
-- Create/Recreate foreign
alter table TB_PACKAGE add constraint FK_PACKAGE_ITEM foreign key (item_code) references TB_ITEM (CODE);  

-- Create/Recreate default 
ALTER TABLE TB_PACKAGE MODIFY version DEFAULT 0;
ALTER TABLE TB_PACKAGE MODIFY pack_num DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_PACKAGE ADD CONSTRAINT UK01_PACKAGE UNIQUE (code) using index tablespace SQUIRREL_SERVER_DATA;
ALTER TABLE TB_PACKAGE ADD CONSTRAINT UK02_PACKAGE UNIQUE (BAR_CODE) using index tablespace SQUIRREL_SERVER_DATA;  
  
--新增序列
create sequence SEQ_PACKAGE minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--delete from TB_PACKAGE

--初始化数据
insert into  TB_PACKAGE
(id,version,status,item_code,code,name,pack_num,bar_code,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_PACKAGE.nextval,0,'ACTIVE','CM000001-BL020101','PAC0001-CM000001-BL020101','件',1,'000000001','基本包装单位件','350805',sysdate,'350805',sysdate);
insert into  TB_PACKAGE
(id,version,status,item_code,code,name,pack_num,bar_code,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_PACKAGE.nextval,0,'ACTIVE','CM000001-BL020101','PAC0005-CM000001-BL020101','件',5,'000000002','基本包装单位件','350805',sysdate,'350805',sysdate);