--drop table TB_COMPANY

-- Create table
create table TB_COMPANY
(
  id               number(18),
  version          number(9),
  status           varchar2(16),
  code             varchar2(64),
  name             varchar2(128),
  express          varchar2(64),
  telephone        varchar2(16),
  email            varchar2(64),
  home_page        varchar2(64),
  remarks      	   varchar2(255),
  creator          varchar2(64),
  create_time      timestamp(3),
  last_operator    varchar2(64),
  update_time      timestamp(3)
)tablespace SQUIRREL_SERVER_DATA ;
-- Add comments to the table 
comment on table TB_COMPANY is '公司表';
-- Add comments to the columns 
comment on column TB_COMPANY.id is 'ID';
comment on column TB_COMPANY.version is '版本';
comment on column TB_COMPANY.status is '状态';
comment on column TB_COMPANY.code is '公司编码';
comment on column TB_COMPANY.name is '公司名称';  
comment on column TB_COMPANY.express is '公司简称';
comment on column TB_COMPANY.telephone is '电话';
comment on column TB_COMPANY.email is '邮箱';
comment on column TB_COMPANY.home_page is '首页';
comment on column TB_COMPANY.remarks is '备注';
comment on column TB_COMPANY.creator is '创建人(登录帐号)';
comment on column TB_COMPANY.create_time is '创建时间';
comment on column TB_COMPANY.last_operator is '最后修改人(登录帐号)';
comment on column TB_COMPANY.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_COMPANY add constraint PK_COMPANY primary key (id) using index tablespace SQUIRREL_SERVER_DATA;  
  
-- Create/Recreate foreign

-- Create/Recreate default 
ALTER TABLE TB_COMPANY MODIFY version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_COMPANY ADD CONSTRAINT UK01_COMPANY UNIQUE (code) using index  tablespace SQUIRREL_SERVER_DATA;
  
--新增序列
create sequence SEQ_COMPANY minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 
 
--初始化数据
insert into  TB_COMPANY
(id,version,status,code,name,express,telephone,email,home_page,remarks,creator,create_time,last_operator,update_time) 
values
(SEQ_COMPANY.nextval,0,'ACTIVE','CM000001','徐明','XUMING','978545','xuming@163.com','www.xuming.com','家具。。。。。。。。。。。。','350805',sysdate,'350805',sysdate);
