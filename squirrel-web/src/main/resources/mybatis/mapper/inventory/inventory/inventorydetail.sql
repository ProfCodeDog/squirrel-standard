--drop table TB_INVENTORY_DETAIL;

-- Create table
create table TB_INVENTORY_DETAIL
(
  id               NUMBER(18),
  version          NUMBER(9),
  is_lock          CHAR(1),
  location_code    VARCHAR2(64),
  package_code     VARCHAR2(64),
  item_code        VARCHAR2(64),
  company_code	   VARCHAR2(64),
  effective_date   TIMESTAMP(3),
  inorder_code	   VARCHAR2(64),
  quantity         NUMBER(9),
  creator          VARCHAR2(64),
  create_time      TIMESTAMP(3),
  last_operator    VARCHAR2(64),
  update_time      TIMESTAMP(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_INVENTORY_DETAIL is '库存明细';
-- Add comments to the columns 
comment on column TB_INVENTORY_DETAIL.id is 'id';
comment on column TB_INVENTORY_DETAIL.version is '版本';
comment on column TB_INVENTORY_DETAIL.is_lock is '是否被锁(Y/N)';
comment on column TB_INVENTORY_DETAIL.location_code is '包装编码';
comment on column TB_INVENTORY_DETAIL.package_code is '库位编码';
comment on column TB_INVENTORY_DETAIL.item_code is '商品条码';
comment on column TB_INVENTORY_DETAIL.company_code is '供应商编码';
comment on column TB_INVENTORY_DETAIL.effective_date is '有效期';
comment on column TB_INVENTORY_DETAIL.inorder_code is '入库单号';
comment on column TB_INVENTORY_DETAIL.quantity is '数量';  
comment on column TB_INVENTORY_DETAIL.creator is '创建人(登录帐号)';
comment on column TB_INVENTORY_DETAIL.create_time is '创建时间';
comment on column TB_INVENTORY_DETAIL.last_operator is '最后修改人(登录帐号)';
comment on column TB_INVENTORY_DETAIL.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_INVENTORY_DETAIL add constraint PK_INVENTORY_DETAIL primary key (ID) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign
alter table TB_INVENTORY_DETAIL add constraint FK_INVENTORY_DETAIL_LOCATION foreign key (location_code) references TB_LOCATION (code);  

-- Create/Recreate default 
ALTER TABLE TB_INVENTORY_DETAIL MODIFY version DEFAULT 0;
ALTER TABLE TB_INVENTORY_DETAIL MODIFY is_lock DEFAULT 'N';
ALTER TABLE TB_INVENTORY_DETAIL MODIFY quantity DEFAULT 0;

-- Create/Recreate  constraint 
ALTER TABLE TB_INVENTORY_DETAIL ADD constraint CONST01_INVENTORY_DETAIL CHECK (is_lock in('Y','N'));

-- Create/Recreate unique 
ALTER TABLE TB_INVENTORY_DETAIL ADD CONSTRAINT UK01_INVENTORY_DETAIL UNIQUE (location_code,package_code,item_code,company_code,effective_date,inorder_code) using index tablespace SQUIRREL_WEB_DATA;
  
--新增序列
create sequence SEQ_INVENTORY_DETAIL minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into TB_INVENTORY_DETAIL
(id ,version,is_lock,location_code,package_code,item_code,company_code,effective_date,inorder_code,quantity,creator,create_time,last_operator,update_time) 
values
(SEQ_INVENTORY_DETAIL.nextval,0,'N','A-01-01-01','PAC0001-CM000001-BL020101','CM000001-BL020101','CM000001',sysdate+300,'IN2018010100000001',720,'350805',sysdate,'350805',sysdate);
