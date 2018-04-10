--drop table TB_CARRIER

-- Create table
create table TB_CARRIER
(
  id               number(18),
  version          number(9),
  status           varchar2(16),
  code             varchar2(64),
  name             varchar2(64),
  express          varchar2(64),
  remarks		   varchar2(64),
  creator          varchar2(64),
  create_time      timestamp(3),
  last_operator    varchar2(64),
  update_time      timestamp(3)
)tablespace SQUIRREL_SERVER_DATA ;
-- Add comments to the table 
comment on table TB_CARRIER is '承运商表';
-- Add comments to the columns 
comment on column TB_CARRIER.id is 'ID';
comment on column TB_CARRIER.version is '版本';
comment on column TB_CARRIER.status is '状态';
comment on column TB_CARRIER.code is '承运商编码';
comment on column TB_CARRIER.name is '承运商名称';  
comment on column TB_CARRIER.express is '承运商简称';
comment on column TB_CARRIER.remarks is '备注';  	  
comment on column TB_CARRIER.creator is '创建人(登录帐号)';
comment on column TB_CARRIER.create_time is '创建时间';
comment on column TB_CARRIER.last_operator is '最后修改人(登录帐号)';
comment on column TB_CARRIER.update_time is '修改时间';

-- Create/Recreate primary
alter table TB_CARRIER add constraint PK_ACKAGE primary key (id)  using index  tablespace SQUIRREL_SERVER_DATA;  
  
-- Create/Recreate foreign

-- Create/Recreate default 
ALTER TABLE TB_CARRIER MODIFY version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_CARRIER ADD CONSTRAINT UK01_CARRIER UNIQUE (code) using index tablespace SQUIRREL_SERVER_DATA;
ALTER TABLE TB_CARRIER ADD CONSTRAINT UK02_CARRIER UNIQUE (express) using index tablespace SQUIRREL_SERVER_DATA;  
  
--新增序列
create sequence SEQ_CARRIER minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_CARRIER
(id,version,status,code,name,express,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_CARRIER.nextval,0,'ACTIVE','CR0001','顺丰快递','SFKD','备注','350805',sysdate,'350805',sysdate);
insert into  TB_CARRIER
(id,version,status,code,name,express,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_CARRIER.nextval,0,'ACTIVE','CR0002','德邦快递','DBKD','备注','350805',sysdate,'350805',sysdate);
insert into  TB_CARRIER
(id,version,status,code,name,express,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_CARRIER.nextval,0,'ACTIVE','CR0003','德邦物流','DBWL','备注','350805',sysdate,'350805',sysdate);