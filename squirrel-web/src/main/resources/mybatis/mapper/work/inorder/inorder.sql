--drop table TB_INORDER;

-- Create table
create table TB_INORDER
(
  id                   number(18),
  version              number(9),
  status               varchar2(16),
  company_code         varchar2(64),
  code                 varchar2(64),
  bill_type            varchar2(64),
  company_bill_code    varchar2(64),
  source_channel_code  varchar2(64),
  bill_source_channel  varchar2(64),
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
  remarks              varchar2(255),
  creator              varchar2(64),
  create_time          timestamp(3),
  last_operator        varchar2(64),
  update_time          timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_INORDER is '入库单表';
-- Add comments to the columns 
comment on column TB_INORDER.id is 'ID';
comment on column TB_INORDER.version is '版本';
comment on column TB_INORDER.status is '状态';
comment on column TB_INORDER.company_code is '公司编码';
comment on column TB_INORDER.code is '入库单编码';
comment on column TB_INORDER.bill_type is '单据类型';  
comment on column TB_INORDER.company_bill_code is '公司订单编码';  
comment on column TB_INORDER.source_channel_code is '来源渠道编码';
comment on column TB_INORDER.bill_source_channel is '订单来源渠道';
comment on column TB_INORDER.order_date is '订单日期';
comment on column TB_INORDER.estimate_date is '预计到货日期';  
comment on column TB_INORDER.start_received_date is '收货开始时间';
comment on column TB_INORDER.end_received_date is '收货结束时间';  
comment on column TB_INORDER.ship_name is '发货方名称';  
comment on column TB_INORDER.ship_country is '发货方国家';  
comment on column TB_INORDER.ship_province is '发货方省';  
comment on column TB_INORDER.ship_city is '发货方市';
comment on column TB_INORDER.ship_area is '发货方区';
comment on column TB_INORDER.ship_address is '发货方地址';       
comment on column TB_INORDER.ship_postcode is '发货方邮政编码'; 
comment on column TB_INORDER.ship_telephone is '发货方电话';
comment on column TB_INORDER.ship_mobile is '发货方手机';
comment on column TB_INORDER.ship_email is '发货方邮箱'; 
comment on column TB_INORDER.remarks is '备注';              
comment on column TB_INORDER.creator is '创建人(登录帐号)';
comment on column TB_INORDER.create_time is '创建时间';
comment on column TB_INORDER.last_operator is '最后修改人(登录帐号)';
comment on column TB_INORDER.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_INORDER
  add constraint PK_INORDER primary key (id)
  using index 
  tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign

-- Create/Recreate default 
ALTER TABLE TB_INORDER MODIFY version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_INORDER ADD CONSTRAINT UK01_INORDER UNIQUE (code) using index  tablespace SQUIRREL_WEB_DATA;
ALTER TABLE TB_INORDER ADD CONSTRAINT UK02_INORDER UNIQUE (company_code,company_bill_code) using index  tablespace SQUIRREL_WEB_DATA;
ALTER TABLE TB_INORDER ADD CONSTRAINT UK03_INORDER UNIQUE (source_channel_code) using index  tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_INORDER minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_INORDER
(id,version,status,company_code,code,bill_type,company_bill_code,source_channel_code,
  bill_source_channel,order_date,estimate_date,start_received_date,end_received_date,    
  ship_name,ship_country,ship_province,ship_city,ship_area,ship_address,ship_postcode,       
  ship_telephone,ship_mobile,ship_email,remarks,creator,create_time,last_operator,update_time)
values
(SEQ_INORDER.nextval,0,'ACTIVE','CM000001','IN2018010100000001','NORMAL_RECEIPT','PO20170421163552851768','SS78945824285',
'QM',sysdate,sysdate+2,sysdate+3,sysdate+3,
'马云','中国','浙江省','杭州市','萧山区','名为真XX路jj小区12号','311200',
'18815698521','0512-82365985','mayun@gmail.com','........描述....','350805',sysdate,'350805',sysdate);
