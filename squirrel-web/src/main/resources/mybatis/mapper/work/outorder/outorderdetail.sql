--drop table TB_OUTORDER_DETAIL;

-- Create table
create table TB_OUTORDER_DETAIL
(
  id                   number(18),
  version              number(9),
  outorder_code        varchar2(64),
  item_code            varchar2(64),
  pac_code    		   varchar2(64),
  quantity             number(9),
  suplier_code         varchar2(64),
  item_quality         varchar2(64),
  remarks          	   varchar2(255),
  creator              varchar2(64),
  create_time          timestamp(3),
  last_operator        varchar2(64),
  update_time          timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_OUTORDER_DETAIL is '发货单明细表';
-- Add comments to the columns 
comment on column  TB_OUTORDER_DETAIL.id is '序号';
comment on column  TB_OUTORDER_DETAIL.version is '版本号';             
comment on column  TB_OUTORDER_DETAIL.outorder_code is '发货单';    
comment on column  TB_OUTORDER_DETAIL.item_code is '商品条码';    
comment on column  TB_OUTORDER_DETAIL.pac_code is '包装单位'; 
comment on column  TB_OUTORDER_DETAIL.quantity is '数量';
comment on column  TB_OUTORDER_DETAIL.suplier_code is '供应商';
comment on column  TB_OUTORDER_DETAIL.item_quality is '商品质量';
comment on column  TB_OUTORDER_DETAIL.remarks is '备注';  	   
comment on column  TB_OUTORDER_DETAIL.creator is '创建人(登录帐号)';     
comment on column  TB_OUTORDER_DETAIL.create_time is '创建时间';     
comment on column  TB_OUTORDER_DETAIL.last_operator is '最后修改人(登录帐号)';    
comment on column  TB_OUTORDER_DETAIL.update_time is '最后更新时间';
  
-- Create/Recreate primary
alter table TB_OUTORDER_DETAIL add constraint PK_OUTORDER_DETAIL primary key (ID)using index tablespace SQUIRREL_WEB_DATA;  
  
--创建主外键（添加主表关联，防止垃圾数据的产生）  
alter table TB_OUTORDER_DETAIL add constraint TB_OUTORDERDETAIL_OUTORDER foreign key (outorder_code) references TB_OUTORDER (CODE); 

-- 创建默认值
ALTER TABLE TB_OUTORDER_DETAIL MODIFY version DEFAULT 0;

--创建约束

--创建唯一索引
  
--新增序列
create sequence SEQ_OUTORDER_DETAIL minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_OUTORDER_DETAIL
(id,version,outorder_code,item_code,pac_code, quantity,suplier_code,item_quality,remarks, creator,create_time,last_operator,update_time) 
values 
(SEQ_OUTORDER_DETAIL.nextval,0,'OT2018010100000001','BL020101','PAC0001-CM000001-BL020101', 5,'CM000001','GOOD','备注信息', '350805',sysdate,'350805',sysdate)
