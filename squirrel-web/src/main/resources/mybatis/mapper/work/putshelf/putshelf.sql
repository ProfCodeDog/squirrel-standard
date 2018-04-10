--drop table TB_PUTSHELF;

-- Create table
create table TB_PUTSHELF
(
  id                   number(18),
  version              number(9),
  status               varchar2(16),
  company_code         varchar2(64),
  inorder_code		   varchar2(64),	
  code                 varchar2(64),
  bill_type            varchar2(64),
  remarks	           varchar2(255),
  creator              varchar2(64),
  create_time          timestamp(3),
  last_operator        varchar2(64),
  update_time          timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_PUTSHELF is '上架单表';
-- Add comments to the columns 
comment on column TB_PUTSHELF.id is 'ID';
comment on column TB_PUTSHELF.version is '版本';
comment on column TB_PUTSHELF.status is '状态';
comment on column TB_PUTSHELF.company_code is '公司编码';
comment on column TB_PUTSHELF.inorder_code is '入库单编码';
comment on column TB_PUTSHELF.code is '上架单编码';
comment on column TB_PUTSHELF.bill_type is '单据类型';
comment on column TB_PUTSHELF.remarks is '备注';              
comment on column TB_PUTSHELF.creator is '创建人(登录帐号)';
comment on column TB_PUTSHELF.create_time is '创建时间';
comment on column TB_PUTSHELF.last_operator is '最后修改人(登录帐号)';
comment on column TB_PUTSHELF.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_PUTSHELF add constraint PK_PUTSHELF primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign
alter table TB_PUTSHELF add constraint FK_PUTSHELF_INORDER foreign key (inorder_code) references TB_INORDER (code);

-- Create/Recreate default 
ALTER TABLE TB_PUTSHELF MODIFY version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_PUTSHELF ADD CONSTRAINT UK01_PUTSHELF UNIQUE (code) using index  tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_PUTSHELF minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_PUTSHELF
(id,version,status,company_code,inorder_code,code,bill_type,remarks,creator,create_time,last_operator,update_time)
values
(SEQ_PUTSHELF.nextval,0,'ACTIVE','CM000001','IN2018010100000001','PT2018010100000001','NORMAL_PUTSHELF','........描述....','350805',sysdate,'350805',sysdate);
