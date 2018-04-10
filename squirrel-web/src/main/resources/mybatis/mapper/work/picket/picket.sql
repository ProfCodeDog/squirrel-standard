--drop table TB_PICKET;

-- Create table
create table TB_PICKET
(
  id                    number(18),
  version               number(9),
  status				varchar2(64),
  company_code			varchar2(64),
  code                  varchar2(64),
  outorder_code         varchar2(64),
  bill_type				varchar2(64),
  wave_doc_code         varchar2(64),
  waybill_code          varchar2(64),
  is_confirm_send       varchar2(64),
  quantity              number(9),
  remarks          		varchar2(255),
  creator               varchar2(64),
  create_time           timestamp(3),
  lasr_operator         varchar2(64),
  update_time           timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_PICKET is '拣货单表';
-- Add comments to the columns 
comment on column TB_PICKET.id is '序号';
comment on column TB_PICKET.version is '版本号'; 
comment on column TB_OUTORDER.status is '状态';	
comment on column TB_PICKET.company_code is '客户编码';
comment on column TB_PICKET.code is '拣货单单号';    
comment on column TB_PICKET.outorder_code is '发货单单号';   
comment on column TB_PICKET.bill_type is '拣货单单据类型';	   
comment on column TB_PICKET.wave_doc_code is '波次单号';   
comment on column TB_PICKET.waybill_code is '运单号'; 
comment on column TB_PICKET.is_confirm_send is '区分是否手动发送发货确认回传状态';
comment on column TB_PICKET.quantity is '数量';
comment on column TB_PICKET.remarks is '备注';  	   
comment on column  TB_PICKET.creator is '创建人(登录帐号)';     
comment on column  TB_PICKET.create_time is '创建时间';     
comment on column  TB_PICKET.lasr_operator is '最后修改人(登录帐号)';    
comment on column  TB_PICKET.update_time is '最后更新时间'; 
  
-- Create/Recreate primary
alter table TB_PICKET add constraint PK_PICKET primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
--创建主外键（添加主表关联，防止垃圾数据的产生）  
alter table TB_PICKET add constraint FK_PICKET_OUTORDER foreign key (outorder_code) references TB_OUTORDER (code);

-- 创建默认值
ALTER TABLE TB_PICKET MODIFY VERSION DEFAULT 0;

--创建约束

--创建唯一索引
ALTER TABLE TB_PICKET ADD CONSTRAINT UK01_PICKET UNIQUE (CODE) using index  tablespace SQUIRREL_WEB_DATA;
  
--新增序列
create sequence SEQ_PICKET minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_PICKET
(id,version,status,company_code,code,outorder_code,bill_type,         
  wave_doc_code,waybill_code,is_confirm_send,quantity,remarks,
  creator,create_time,lasr_operator,update_time) 
values 
(SEQ_PICKET.nextval,0,'OPEN','CM000001','PK2018010100000001','OT2018010100000001','PICK_ORDER',
  '','16821454856','N','5','备注', '350805',sysdate,'350805',sysdate);
