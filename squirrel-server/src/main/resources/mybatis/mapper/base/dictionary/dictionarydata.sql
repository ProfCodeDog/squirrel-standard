--drop table TB_DICTIONARY_DATA

-- Create table
create table TB_DICTIONARY_DATA
(
  dict_value  varchar2(64),
  name        varchar2(64),
  value       varchar2(64),
  remarks     varchar2(255)
)tablespace SQUIRREL_SERVER_DATA ;
-- Add comments to the table 
comment on table TB_DICTIONARY_DATA is '字典数据表';
-- Add comments to the columns 
comment on column TB_DICTIONARY_DATA.dict_value is '字典值';
comment on column TB_DICTIONARY_DATA.name is '字典数据名字';
comment on column TB_DICTIONARY_DATA.value is '字典数据值';  
  
-- Create/Recreate foreign
alter table TB_DICTIONARY_DATA add constraint FK_DICTIONARYDATA_DICTIONARY foreign key (dict_value) references TB_DICTIONARY (VALUE);  
  
-- Create/Recreate unique 
ALTER TABLE TB_DICTIONARY_DATA ADD CONSTRAINT UK01_DICTIONARY_DATA UNIQUE (dict_value,value) using index tablespace SQUIRREL_SERVER_DATA;  

--初始化数据
insert into  TB_DICTIONARY_DATA (dict_value,name,value,remarks) values ('BILL_TYPE','正常收货单','NORMAL_RECEIPT','备注');
insert into  TB_DICTIONARY_DATA (dict_value,name,value,remarks) values ('BILL_TYPE','退货收货单','RETURN_RECEIPT','备注');
insert into  TB_DICTIONARY_DATA (dict_value,name,value,remarks) values ('BILL_SOURCE_CHANNEL','奇门','QM','备注');