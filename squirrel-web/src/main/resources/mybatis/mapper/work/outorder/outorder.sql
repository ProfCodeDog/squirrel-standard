--drop table TB_OUTORDER;

-- Create table
create table TB_OUTORDER
(
  id                   number(18),
  version              number(9),
  status               varchar2(16),
  company_code         varchar2(64),
  carrier_code       varchar2(64),
  code                 varchar2(64),
  company_bill_code    varchar2(64),
  source_channel_code  varchar2(64),
  bill_source_channel  varchar2(64),
  waybill_code       varchar2(64),
  bill_type            varchar2(64),
  order_date           timestamp(3),
  estimate_date        timestamp(3),
  start_received_date  timestamp(3),
  end_received_date    timestamp(3),
  ship_name            varchar2(64),
  ship_country         varchar2(64),
  ship_province        varchar2(64),
  ship_city            varchar2(64),
  ship_area            varchar2(64),
  ship_address         varchar2(255),
  ship_postcode        varchar2(16),
  ship_telephone       varchar2(16),
  ship_mobile          varchar2(16),
  ship_email           varchar2(64),
  receive_name       varchar2(64),
  receive_country      varchar2(64),
  receive_province     varchar2(64),
  receive_city         varchar2(64),
  receive_area         varchar2(64),
  receive_address      varchar2(255),
  receive_postcode     varchar2(16),
  receive_telephone    varchar2(16),
  receive_mobile       varchar2(16),
  receive_email        varchar2(64),
  remarks               varchar2(255),
  creator              varchar2(64),
  create_time          timestamp(3),
  last_operator        varchar2(64),
  update_time          timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_OUTORDER is '出库单表';
-- Add comments to the columns 
comment on column TB_OUTORDER.id is 'ID';
comment on column TB_OUTORDER.version is '版本';
comment on column TB_OUTORDER.status is '状态';
comment on column TB_OUTORDER.company_code is '公司编码';
comment on column TB_OUTORDER.carrier_code is '承运商编码';
comment on column TB_OUTORDER.code is '出库单编码';
comment on column TB_OUTORDER.company_bill_code is '公司订单编码';  
comment on column TB_OUTORDER.source_channel_code is '来源渠道编码';
comment on column TB_OUTORDER.bill_source_channel is '订单来源渠道';
comment on column TB_OUTORDER.waybill_code is '运单号';
comment on column TB_OUTORDER.bill_type is '单据类型 ';
comment on column TB_OUTORDER.order_date is '订单日期';
comment on column TB_OUTORDER.estimate_date is '预计到货日期';  
comment on column TB_OUTORDER.start_received_date is '出库开始时间';
comment on column TB_OUTORDER.end_received_date is '出库结束时间';  
comment on column TB_OUTORDER.ship_name is '发货方名称';  
comment on column TB_OUTORDER.ship_country is '发货方国家';  
comment on column TB_OUTORDER.ship_province is '发货方省';  
comment on column TB_OUTORDER.ship_city is '发货方市';
comment on column TB_OUTORDER.ship_area is '发货方区';
comment on column TB_OUTORDER.ship_address is '发货方地址';       
comment on column TB_OUTORDER.ship_postcode is '发货方邮政编码'; 
comment on column TB_OUTORDER.ship_telephone is '发货方电话';
comment on column TB_OUTORDER.ship_mobile is '发货方手机';
comment on column TB_OUTORDER.ship_email is '发货方邮箱';  
comment on column TB_OUTORDER.receive_name is '收货方名称';  
comment on column TB_OUTORDER.receive_country is '收货方国家';  
comment on column TB_OUTORDER.receive_province is '收货方省';  
comment on column TB_OUTORDER.receive_city is '收货方市';
comment on column TB_OUTORDER.receive_area is '收货方区';
comment on column TB_OUTORDER.receive_address is '收货方地址';       
comment on column TB_OUTORDER.receive_postcode is '收货方邮政编码'; 
comment on column TB_OUTORDER.receive_telephone is '收货方电话';
comment on column TB_OUTORDER.receive_mobile is '收货方手机';
comment on column TB_OUTORDER.receive_email is '收货方邮箱'; 
comment on column TB_OUTORDER.remarks is '出库单描述';              
comment on column TB_OUTORDER.creator is '创建人(登录帐号)';
comment on column TB_OUTORDER.create_time is '创建时间';
comment on column TB_OUTORDER.last_operator is '最后修改人(登录帐号)';
comment on column TB_OUTORDER.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_OUTORDER add constraint PK_OUTORDER primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign

-- 创建默认值
ALTER TABLE TB_OUTORDER MODIFY version DEFAULT 0;

--创建约束

--创建唯一索引
ALTER TABLE TB_OUTORDER ADD CONSTRAINT UK01_OUTORDER UNIQUE (code) using index  tablespace SQUIRREL_WEB_DATA;
ALTER TABLE TB_OUTORDER ADD CONSTRAINT UK02_OUTORDER UNIQUE (company_bill_code) using index  tablespace SQUIRREL_WEB_DATA;
ALTER TABLE TB_OUTORDER ADD CONSTRAINT UK03_OUTORDER UNIQUE (source_channel_code) using index  tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_OUTORDER minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_OUTORDER
(id,version,status,company_code,carrier_code,code,company_bill_code,source_channel_code,
  bill_source_channel,waybill_code,bill_type,order_date,estimate_date,start_received_date,end_received_date,    
  ship_name,ship_country,ship_province,ship_city,ship_area,ship_address,ship_postcode,       
  ship_telephone,ship_mobile,ship_email,
  receive_name,receive_country,receive_province,receive_city,receive_area,receive_address,receive_postcode,       
  receive_telephone,receive_mobile,receive_email,
  remarks,creator,create_time,last_operator,update_time)
values
(SEQ_OUTORDER.nextval,0,'ACTIVE','CM000001','CR0001','OT2018010100000001','PO20170421163552851768','SS78945824285',
'QM','16821454856','NORMAL_RECEIPT',sysdate,sysdate+2,sysdate+3,sysdate+3,
'马云','中国','浙江省','杭州市','萧山区','名为真XX路jj小区12号','311200',
'18815698521','0512-82365985','mayun@gmail.com',
'马化腾','中国','浙江省','杭州市','萧山区','名为真XX路jj小区12号','311200',
'18815698521','0512-82365985','mayun@gmail.com',
'........描述....','350805',sysdate,'350805',sysdate);  
