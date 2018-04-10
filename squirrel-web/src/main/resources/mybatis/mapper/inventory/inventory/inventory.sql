--drop table TB_INVENTORY

-- Create table
create table TB_INVENTORY
(
  id               number(18),
  version          number(9),
  status           varchar2(16),
  is_lock          char(1),
  item_code        varchar2(64),
  quantity         number(18),
  creator          varchar2(64),
  create_time      timestamp(3),
  last_operator    varchar2(64),
  update_time      timestamp(3)
)tablespace SQUIRREL_WEB_DATA;


-- Add comments to the table 
comment on table TB_INVENTORY is '库存表';
-- Add comments to the columns 
comment on column TB_INVENTORY.id is 'ID';
comment on column TB_INVENTORY.version is '版本';
comment on column TB_INVENTORY.status is '状态';    
comment on column TB_INVENTORY.is_lock is '是否被锁(Y/N)';  
comment on column TB_INVENTORY.item_code is '货品编码';
comment on column TB_INVENTORY.quantity is '件数';
comment on column TB_INVENTORY.creator is '创建人(登录帐号)';
comment on column TB_INVENTORY.create_time is '创建时间';
comment on column TB_INVENTORY.last_operator is '最后修改人(登录帐号)';
comment on column TB_INVENTORY.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_INVENTORY add constraint PK_INVENTORY primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
 
-- Create/Recreate default 
ALTER TABLE TB_INVENTORY MODIFY quantity DEFAULT 0;
ALTER TABLE TB_INVENTORY MODIFY is_lock DEFAULT 'N';

-- Create/Recreate  constraint 
ALTER TABLE TB_INVENTORY ADD constraint CONST01_INVENTORY CHECK (is_lock in('Y','N'));

-- Create/Recreate unique 
ALTER TABLE TB_INVENTORY ADD CONSTRAINT UK01_INVENTORY UNIQUE (item_code) using index tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_INVENTORY minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20;  

--初始化数据
insert into  TB_INVENTORY
(id,version,status,is_lock,item_code,quantity,creator,create_time,last_operator,update_time) 
values
(SEQ_INVENTORY.nextval,0,'','N','CUS00001_BLN010106',2000,'350805',sysdate,'350805',sysdate);

insert into  TB_INVENTORY
(id,version,status,is_lock,item_code,quantity,creator,create_time,last_operator,update_time)
values
(SEQ_INVENTORY.nextval,0,'','N','CUS00001_BLN010107',8000,'350805',sysdate,'350805',sysdate);
