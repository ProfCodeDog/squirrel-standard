--drop table TB_PUTSHELF_DETAIL;

-- Create table
create table TB_PUTSHELF_DETAIL
(
  id                   number(18),
  version              number(9),
  putshelf_code        varchar2(64),
  pac_code             varchar2(64),
  item_code            varchar2(64),
  quantity             number(9),  
  received_date        timestamp(3),
  effective_date       timestamp(3),
  supplier_code         varchar2(64),  
  item_quality	   	   varchar2(64),
  remarks          	   varchar2(255),
  creator              varchar2(64),
  create_time          timestamp(3),
  last_operator        varchar2(64),
  update_time          timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_PUTSHELF_DETAIL is '上架单明细表';
-- Add comments to the columns 
comment on column TB_PUTSHELF_DETAIL.id is 'id';
comment on column TB_PUTSHELF_DETAIL.version is '版本';
comment on column TB_PUTSHELF_DETAIL.putshelf_code is '上架单编码';
comment on column TB_PUTSHELF_DETAIL.pac_code is '包装编码';
comment on column TB_PUTSHELF_DETAIL.item_code is '商品编码'; 
comment on column TB_PUTSHELF_DETAIL.quantity is '数量';   
comment on column TB_PUTSHELF_DETAIL.received_date is '收货日期';
comment on column TB_PUTSHELF_DETAIL.effective_date is '有效日期';
comment on column TB_PUTSHELF_DETAIL.supplier_code is '供应商编码'; 
comment on column TB_PUTSHELF_DETAIL.item_quality is '商品质量';
comment on column TB_PUTSHELF_DETAIL.remarks is '备注';
comment on column TB_PUTSHELF_DETAIL.creator is '创建人(登录帐号)';
comment on column TB_PUTSHELF_DETAIL.create_time is '创建时间';
comment on column TB_PUTSHELF_DETAIL.last_operator is '最后修改人(登录帐号)';
comment on column TB_PUTSHELF_DETAIL.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_PUTSHELF_DETAIL add constraint PK_PUTSHELF_DETAIL primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign
alter table TB_PUTSHELF_DETAIL add constraint FK_PUTSHELFDETAIL_PUTSHELF foreign key (putshelf_code) references TB_PUTSHELF (code);  

-- Create/Recreate default 
ALTER TABLE TB_PUTSHELF_DETAIL MODIFY version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 

--新增序列
create sequence SEQ_PUTSHELF_DETAIL minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_PUTSHELF_DETAIL
(id,version,putshelf_code,pac_code,item_code,quantity,received_date,effective_date,supplier_code,item_quality,remarks,creator,create_time,last_operator,update_time)
values
(SEQ_PUTSHELF_DETAIL.nextval,0,'PT2018010100000001','PAC0001-CM000001-BL020101','CM000001-BL020101',100,sysdate-20,sysdate+300,'CM000001','GOOD','备注','350805',sysdate,'350805',sysdate);