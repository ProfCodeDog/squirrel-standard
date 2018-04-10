--drop table TB_LOADORDER;

-- Create table
create table TB_LOADORDER
(
id					number(18),
version				number(9),
status				varchar2(16),
code				varchar2(64),
carrier_code    	varchar2(64),
company_code    	varchar2(64),
start_time      	timestamp(3),
driver_name     	varchar2(64),
vehicle_numble  	varchar2(64),
driver_country  	varchar2(64),
driver_province 	varchar2(64),
driver_city     	varchar2(64),
driver_area     	varchar2(64),
driver_address  	varchar2(255),
driver_postcode 	varchar2(16),
driver_telephone	varchar2(16),
driver_mobile   	varchar2(16),
driver_email    	varchar2(64),
remarks         	varchar2(255),
CREATOR         	varchar2(64),
CREATE_TIME     	timestamp(3),
LAST_OPERATOR   	varchar2(64),
UPDATE_TIME     	timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_LOADORDER is '装车单表';
-- Add comments to the columns 
comment on column TB_LOADORDER.id is 'ID';
comment on column TB_LOADORDER.version is '版本';
comment on column TB_LOADORDER.status is '状态';
comment on column TB_LOADORDER.code is '装车单编码';
comment on column TB_LOADORDER.carrier_code is '承运商编码'; 
comment on column TB_LOADORDER.company_code is '公司订单编码';   
comment on column TB_LOADORDER.start_time is '发车时间'; 
comment on column TB_LOADORDER.driver_name is '司机名称';   
comment on column TB_LOADORDER.vehicle_numble is '车牌号';  
comment on column TB_LOADORDER.driver_country is '司机国家';  
comment on column TB_LOADORDER.driver_province is '司机省';  
comment on column TB_LOADORDER.driver_city is '司机市';
comment on column TB_LOADORDER.driver_area is '司机区';
comment on column TB_LOADORDER.driver_address is '司机地址';       
comment on column TB_LOADORDER.driver_postcode is '司机邮政编码'; 
comment on column TB_LOADORDER.driver_telephone is '司机电话';
comment on column TB_LOADORDER.driver_mobile is '司机手机';
comment on column TB_LOADORDER.driver_email is '司机邮箱'; 
comment on column TB_LOADORDER.remarks is '备注';              
comment on column TB_LOADORDER.CREATOR is '创建人(登录帐号)';
comment on column TB_LOADORDER.CREATE_TIME is '创建时间';
comment on column TB_LOADORDER.LAST_OPERATOR is '最后修改人(登录帐号)';
comment on column TB_LOADORDER.UPDATE_TIME is '修改时间';
  
-- Create/Recreate primary
alter table TB_LOADORDER  add constraint PK_LOADORDER primary key (ID)  using index  tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign

-- Create/Recreate default 
ALTER TABLE TB_LOADORDER MODIFY VERSION DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_LOADORDER ADD CONSTRAINT UK01_LOADORDER UNIQUE (CODE) using index  tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_LOADORDER minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20;

--初始化数据
insert into  TB_LOADORDER
(id,version,status,code,carrier_code,company_code,start_time,driver_name     
,vehicle_numble,driver_country,driver_province,driver_city     
,driver_area,driver_address,driver_postcode,driver_telephone
,driver_mobile,driver_email,remarks,creator,create_time,last_operator,update_time)
values
(SEQ_LOADORDER.nextval,0,'ACTIVE','LD2018010100000001','CR0001','CM000001',sysdate,'司机名称',
'赣C_888666','中国','浙江省','杭州市','萧山区','名为真XX路jj小区12号','311200',
'18815698521','0512-82365985','mayun@gmail.com','........描述....','350805',sysdate,'350805',sysdate);
