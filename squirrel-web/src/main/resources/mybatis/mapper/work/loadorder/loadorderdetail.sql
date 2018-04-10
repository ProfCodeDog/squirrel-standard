--drop table TB_LOADORDER_DETAIL;

-- Create table
create table TB_LOADORDER_DETAIL
(
id					number(18),
version				number(9),
loadorder_code		varchar2(64),
company_code    	varchar2(64),
outorder_code		varchar2(64),
pick_code			varchar2(64),
waybill_code		varchar2(64),
end_time			timestamp(3),
remarks         	varchar2(255),
creator             varchar2(64),
create_time         timestamp(3),
last_operator       varchar2(64),
update_time         timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_LOADORDER_DETAIL is '装车单明细表';
-- Add comments to the columns 
comment on column TB_LOADORDER_DETAIL.id is 'id';
comment on column TB_LOADORDER_DETAIL.version is '版本';
comment on column TB_LOADORDER_DETAIL.loadorder_code is '装车单编码';
comment on column TB_LOADORDER_DETAIL.company_code is '公司编码';    
comment on column TB_LOADORDER_DETAIL.outorder_code is '出库单编码';
comment on column TB_LOADORDER_DETAIL.pick_code is '拣货单编码';  
comment on column TB_LOADORDER_DETAIL.waybill_code is '运单号';    
comment on column TB_LOADORDER_DETAIL.end_time is '到达时间';  
comment on column TB_LOADORDER_DETAIL.remarks is '备注'; 
comment on column TB_LOADORDER_DETAIL.creator is '创建人(登录帐号)';
comment on column TB_LOADORDER_DETAIL.create_time is '创建时间';
comment on column TB_LOADORDER_DETAIL.last_operator is '最后修改人(登录帐号)';
comment on column TB_LOADORDER_DETAIL.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_LOADORDER_DETAIL add constraint PK_LOADORDER_DETAIL primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign
alter table TB_LOADORDER_DETAIL add constraint FK_LOADORDERDETAIL_LOADORDER foreign key (loadorder_code) references TB_LOADORDER (code);  
alter table TB_LOADORDER_DETAIL add constraint FK_LOADORDERDETAIL_PICKCODE foreign key (pick_code) references TB_PICKET (code);  

-- Create/Recreate default 
ALTER TABLE TB_LOADORDER_DETAIL MODIFY VERSION DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_LOADORDER_DETAIL ADD CONSTRAINT UK01_LOADORDER_DETAIL UNIQUE (pick_code) using index  tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_LOADORDER_DETAIL minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20;

--初始化数据
insert into  TB_LOADORDER_DETAIL
(id,version,loadorder_code,company_code,outorder_code,pick_code,waybill_code,end_time,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_LOADORDER_DETAIL.nextval,0,'LD2018010100000001','CM000001','OT2018010100000001','PK2018010100000001','16821454856',sysdate,'........描述....','350805',sysdate,'350805',sysdate);  
