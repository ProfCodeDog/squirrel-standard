--drop table TB_MOVEDOC_DETAIL;

-- Create table
create table TB_MOVEDOC_DETAIL
(
  id                   number(18),
  version              number(9),
  status               varchar2(16),
  movedoc_code         varchar2(64),
  location_code        varchar2(64),
  pac_code             varchar2(64),
  item_code            varchar2(64),
  quantity             number(9),  
  remarks              varchar2(255),
  creator              varchar2(64),
  create_time          timestamp(3),
  last_operator        varchar2(64),
  update_time          timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_MOVEDOC_DETAIL is '移位单明细表';
-- Add comments to the columns 
comment on column TB_MOVEDOC_DETAIL.id is 'id';
comment on column TB_MOVEDOC_DETAIL.version is '版本';
comment on column TB_MOVEDOC_DETAIL.status is '状态';
comment on column TB_MOVEDOC_DETAIL.movedoc_code is '移位单编码';
comment on column TB_MOVEDOC_DETAIL.location_code is '库位编码';
comment on column TB_MOVEDOC_DETAIL.pac_code is '包装编码';
comment on column TB_MOVEDOC_DETAIL.item_code is '货品编码';
comment on column TB_MOVEDOC_DETAIL.quantity is '数量';
comment on column TB_MOVEDOC_DETAIL.remarks is '备注';              
comment on column TB_MOVEDOC_DETAIL.creator is '创建人(登录帐号)';
comment on column TB_MOVEDOC_DETAIL.create_time is '创建时间';
comment on column TB_MOVEDOC_DETAIL.last_operator is '最后修改人(登录帐号)';
comment on column TB_MOVEDOC_DETAIL.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_MOVEDOC_DETAIL add constraint PK_MOVEDOC_DETAIL primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign
alter table TB_MOVEDOC_DETAIL add constraint FK_MOVEDOCDETAIL_MOVEDOC foreign key (movedoc_code) references TB_MOVEDOC (code);  

-- Create/Recreate default 
ALTER TABLE TB_MOVEDOC_DETAIL MODIFY version DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_MOVEDOC_DETAIL ADD CONSTRAINT UK01_MOVEDOC_DETAIL UNIQUE (movedoc_code,location_code,pac_code,item_code) using index  tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_MOVEDOC_DETAIL minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_MOVEDOC_DETAIL
(id,version,status,movedoc_code,location_code,pac_code,item_code,quantity,remarks,creator,create_time,last_operator,update_time)
values
(SEQ_MOVEDOC_DETAIL.nextval,0,'ACTIVE','MV2018010100000001','A-01-01-01','PAC0001-CM000001-BL020101','CM000001-BL020101',50,'........描述....','350805',sysdate,'350805',sysdate);
