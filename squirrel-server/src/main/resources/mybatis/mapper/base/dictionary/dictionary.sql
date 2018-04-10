--drop table TB_DICTIONARY

-- Create table
create table TB_DICTIONARY
(
  name        varchar2(64),
  value       varchar2(64),
  remarks     varchar2(255)
)tablespace SQUIRREL_SERVER_DATA;
-- Add comments to the table 
comment on table TB_DICTIONARY is '字典表';
-- Add comments to the columns 
comment on column TB_DICTIONARY.name is '字典名字';
comment on column TB_DICTIONARY.value is '字典值';
  
-- Create/Recreate primary
alter table TB_DICTIONARY add constraint PK_DICTIONARY primary key (value) using index tablespace SQUIRREL_SERVER_DATA;  
  
--初始化数据
insert into  TB_DICTIONARY (name,value,remarks) values ('承运商简称' , 'CARRIER_EXPRESS','备注');
insert into  TB_DICTIONARY (name,value,remarks) values ('单据类型' , 'BILL_TYPE','备注');
insert into  TB_DICTIONARY (name,value,remarks) values ('单据状态' , 'BILL_STATUS','备注');
insert into  TB_DICTIONARY (name,value,remarks) values ('单据来源渠道' , 'BILL_SOURCE_CHANNEL','备注');
insert into  TB_DICTIONARY (name,value,remarks) values ('库位类型' , 'LOCATION_TYPE','备注');