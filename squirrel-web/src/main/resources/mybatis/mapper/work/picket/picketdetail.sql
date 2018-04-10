--drop table TB_PICKET_DETAIL;

-- Create table
create table TB_PICKET_DETAIL
(
  id                   number(18),
  version              number(9),
  picket_code          varchar2(64),
  item_code            varchar2(64),
  pac_code    		   varchar2(64),
  quantity 	           number(9),
  supplier_code        varchar2(64),
  item_quality         varchar2(64),
  remarks              varchar2(255),
  creator              varchar2(64),
  create_time          timestamp(3),
  lasr_operator        varchar2(64),
  update_time          timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_PICKET_DETAIL is '拣货单明细表';
-- Add comments to the columns 
comment on column  TB_PICKET_DETAIL.id is '序号';
comment on column  TB_PICKET_DETAIL.version is '版本号';             
comment on column  TB_PICKET_DETAIL.picket_code is '拣货单';    
comment on column  TB_PICKET_DETAIL.item_code is '商品条码';    
comment on column  TB_PICKET_DETAIL.pac_code is '包装单位'; 
comment on column  TB_PICKET_DETAIL.quantity is '数量';
comment on column  TB_PICKET_DETAIL.supplier_code is '供应商';
comment on column  TB_PICKET_DETAIL.item_quality is '商品质量';
comment on column  TB_PICKET_DETAIL.remarks is '备注';  	   
comment on column  TB_PICKET_DETAIL.creator is '创建人(登录帐号)';     
comment on column  TB_PICKET_DETAIL.create_time is '创建时间';     
comment on column  TB_PICKET_DETAIL.lasr_operator is '最后修改人(登录帐号)';    
comment on column  TB_PICKET_DETAIL.update_time is '最后更新时间';
  
-- Create/Recreate primary
alter table TB_PICKET_DETAIL add constraint PK_PICKET_DETAIL primary key (ID)  using index  tablespace SQUIRREL_WEB_DATA;  
  
--创建主外键（添加主表关联，防止垃圾数据的产生）  
alter table TB_PICKET_DETAIL add constraint FK_PICKET_DETAIL_PICKET foreign key (picket_code)  references TB_PICKET (code); 

-- 创建默认值
ALTER TABLE TB_PICKET_DETAIL MODIFY version DEFAULT 0;

--创建约束

--创建唯一索引
  
--新增序列
create sequence SEQ_PICKET_DETAIL minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_PICKET_DETAIL
(id,version,picket_code,item_code,pac_code,quantity,   
  supplier_code,item_quality,remarks,creator,create_time,lasr_operator,update_time) 
values 
(SEQ_PICKET_DETAIL.nextval,0,'PK2018010100000001','BL020101','PAC0001-CM000001-BL020101',5,
  'CM000001','GOOD','备注信息', '350805',sysdate,'350805',sysdate);
