--drop table TB_INORDER_DETAIL;

-- Create table
create table TB_INORDER_DETAIL
(
  id                   number(18),
  version              number(9),
  inorder_code         varchar2(64),
  pac_code             varchar2(64),
  item_code            varchar2(64),
  quantity             number(9),  
  received_date        timestamp(3),
  effective_date       timestamp(3),
  supplier_code        varchar2(64),
  item_quality	   	   varchar2(64),
  remarks          	   varchar2(255),
  creator              varchar2(64),
  create_time          timestamp(3),
  last_operator        varchar2(64),
  update_time          timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_INORDER_DETAIL is '收货单明细表';
-- Add comments to the columns 
comment on column TB_INORDER_DETAIL.id is 'ID';
comment on column TB_INORDER_DETAIL.version is '版本';
comment on column TB_INORDER_DETAIL.inorder_code is '入库单编码';
comment on column TB_INORDER_DETAIL.pac_code is '包装编码';
comment on column TB_INORDER_DETAIL.item_code is '商品编码'; 
comment on column TB_INORDER_DETAIL.quantity is '数量';   
comment on column TB_INORDER_DETAIL.received_date is '收货日期';
comment on column TB_INORDER_DETAIL.effective_date is '有效日期';
comment on column TB_INORDER_DETAIL.supplier_code is '供应商编码'; 
comment on column TB_INORDER_DETAIL.item_quality is '商品质量'; 
comment on column TB_INORDER_DETAIL.remarks is '备注';   
comment on column  TB_INORDER_DETAIL.creator is '创建人(登录帐号)';     
comment on column  TB_INORDER_DETAIL.create_time is '创建时间';     
comment on column  TB_INORDER_DETAIL.last_operator is '最后修改人(登录帐号)';    
comment on column  TB_INORDER_DETAIL.update_time is '最后更新时间';
  
-- Create/Recreate primary
alter table TB_INORDER_DETAIL add constraint PK_INORDER_DETAIL primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign
alter table TB_INORDER_DETAIL add constraint FK_INORDERDETAIL_INORDER foreign key (inorder_code) references TB_INORDER (code);  

-- Create/Recreate default 
ALTER TABLE TB_INORDER_DETAIL MODIFY version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
  
--新增序列
create sequence SEQ_INORDER_DETAIL minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_INORDER_DETAIL
(id,version,inorder_code,pac_code,item_code,quantity,received_date,effective_date,supplier_code,item_quality,remarks,creator,create_time,last_operator,update_time)
values
(SEQ_INORDER_DETAIL.nextval,0,'IN2018010100000001','PAC0001-CM000001-BL020101','COMP00001-BL020101',100,sysdate-20,sysdate+300,'CM000001','GOOD','备注','350805',sysdate,'350805',sysdate);