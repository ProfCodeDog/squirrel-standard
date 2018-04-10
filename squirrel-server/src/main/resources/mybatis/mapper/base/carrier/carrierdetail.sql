--drop table TB_CARRIER_DETAIL

-- Create table
create table TB_CARRIER_DETAIL
(
  id               number(18),
  version          number(9),
  status           varchar2(16),
  carrier_code     varchar2(64),
  code             varchar2(64),
  name             varchar2(64),
  express          varchar2(64),
  country          varchar2(64),
  province         varchar2(64),
  city             varchar2(64),
  area             varchar2(64),
  remarks		   varchar2(64),
  creator          varchar2(64),
  create_time      timestamp(3),
  last_operator    varchar2(64),
  update_time      timestamp(3)
)tablespace SQUIRREL_SERVER_DATA ;
-- Add comments to the table 
comment on table TB_CARRIER_DETAIL is '承运商明细表';
-- Add comments to the columns 
comment on column TB_CARRIER_DETAIL.id is 'ID';
comment on column TB_CARRIER_DETAIL.version is '版本';
comment on column TB_CARRIER_DETAIL.status is '状态';
comment on column TB_CARRIER_DETAIL.carrier_code is '承运商编码';  
comment on column TB_CARRIER_DETAIL.code is '承运商明细编码';
comment on column TB_CARRIER_DETAIL.name is '承运商明细名称';  
comment on column TB_CARRIER_DETAIL.express is '承运商明细简称';
comment on column TB_CARRIER_DETAIL.country is '国家';
comment on column TB_CARRIER_DETAIL.province is '省';
comment on column TB_CARRIER_DETAIL.city is '市';
comment on column TB_CARRIER_DETAIL.area is '区';     
comment on column TB_CARRIER_DETAIL.remarks is '备注';  
comment on column TB_CARRIER_DETAIL.creator is '创建人(登录帐号)';
comment on column TB_CARRIER_DETAIL.create_time is '创建时间';
comment on column TB_CARRIER_DETAIL.last_operator is '最后修改人(登录帐号)';
comment on column TB_CARRIER_DETAIL.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_CARRIER_DETAIL add constraint PK_CARRIER_DETAIL primary key (id) using index tablespace SQUIRREL_SERVER_DATA;  
  
-- Create/Recreate foreign
alter table TB_CARRIER_DETAIL add constraint FK_CARRIERDETAIL_INORDER foreign key (carrier_code) references TB_CARRIER (code);  

-- Create/Recreate default 
ALTER TABLE TB_CARRIER_DETAIL MODIFY version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_CARRIER_DETAIL ADD CONSTRAINT UK01_CARRIER_DETAIL UNIQUE (code) using index tablespace SQUIRREL_SERVER_DATA;

ALTER TABLE TB_CARRIER_DETAIL ADD CONSTRAINT UK02_CARRIER_DETAIL UNIQUE (express) using index  tablespace SQUIRREL_SERVER_DATA;  

ALTER TABLE TB_CARRIER_DETAIL ADD CONSTRAINT UK03_CARRIER_DETAIL UNIQUE (carrier_code,country,province,city,area) using index  tablespace SQUIRREL_SERVER_DATA; 
  
--新增序列
create sequence SEQ_CARRIER_DETAIL minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_CARRIER_DETAIL
(id,version,status,carrier_code,code,name,express,country,province,city,area,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_CARRIER_DETAIL.nextval,0,'ACTIVE','CR0001','CR0001-00001','顺丰快递-上海省','SFKD-SH','中国','上海省','-','-','备注','350805',sysdate,'350805',sysdate);
insert into  TB_CARRIER_DETAIL
(id,version,status,carrier_code,code,name,express,country,province,city,area,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_CARRIER_DETAIL.nextval,0,'ACTIVE','CR0002','CR0002-00002','德邦快递-上海省','DBKD-SH','中国','上海省','-','-','备注','350805',sysdate,'350805',sysdate);
insert into  TB_CARRIER_DETAIL
(id,version,status,carrier_code,code,name,express,country,province,city,area,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_CARRIER_DETAIL.nextval,0,'ACTIVE','CR0002','CR0002-00053','德邦快递-江苏省-南京市','DBKD-JS-NJ','中国','江苏省','南京市','-','备注','350805',sysdate,'350805',sysdate);
insert into  TB_CARRIER_DETAIL
(id,version,status,carrier_code,code,name,express,country,province,city,area,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_CARRIER_DETAIL.nextval,0,'ACTIVE','CR0003','CR0003-00001','德邦物流-上海省','DBWL-SH','中国','上海省','-','-','备注','350805',sysdate,'350805',sysdate);