--drop table TB_MOVEDOC;

-- Create table
create table TB_MOVEDOC
(
  id                   number(18),
  version              number(9),
  status               varchar2(16),
  code                 varchar2(64),
  bill_type            varchar2(64),
  remarks              varchar2(255),
  creator              varchar2(64),
  create_time          timestamp(3),
  last_operator        varchar2(64),
  update_time          timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_MOVEDOC is '移位单表';
-- Add comments to the columns 
comment on column TB_MOVEDOC.id is 'id';
comment on column TB_MOVEDOC.version is '版本';
comment on column TB_MOVEDOC.status is '状态';
comment on column TB_MOVEDOC.code is '移位单编码';
comment on column TB_MOVEDOC.bill_type is '单据类型';
comment on column TB_MOVEDOC.remarks is '备注';              
comment on column TB_MOVEDOC.creator is '创建人(登录帐号)';
comment on column TB_MOVEDOC.create_time is '创建时间';
comment on column TB_MOVEDOC.last_operator is '最后修改人(登录帐号)';
comment on column TB_MOVEDOC.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_MOVEDOC add constraint PK_MOVEDOC primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign

-- Create/Recreate default 
ALTER TABLE TB_MOVEDOC MODIFY version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_MOVEDOC ADD CONSTRAINT UK01_MOVEDOC UNIQUE (code) using index  tablespace SQUIRREL_WEB_DATA;
  
--新增序列
create sequence SEQ_MOVEDOC minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_MOVEDOC
(id,version,status,code,bill_type,remarks,creator,create_time,last_operator,update_time)
values
(SEQ_MOVEDOC.nextval,0,'ACTIVE','MV2018010100000001','MV_MOVEDOC','........描述....','350805',sysdate,'350805',sysdate);
