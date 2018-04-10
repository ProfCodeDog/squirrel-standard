--drop table TB_LOCATION;

-- Create table
create table TB_LOCATION
(
  id               number(18),
  version          number(9),
  status           varchar2(16),
  is_lock          char(1),
  type             varchar2(16),    
  code             varchar2(64),
  name             varchar2(64),
  zone_code        varchar2(64),
  column_no        number(9),
  row_no           number(9),
  layer_no         number(9),
  creator          varchar2(64),
  create_time      timestamp(3),
  last_operator    varchar2(64),
  update_time      timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_LOCATION is '库位表';
-- Add comments to the columns 
comment on column TB_LOCATION.id is 'ID';
comment on column TB_LOCATION.version is '版本';
comment on column TB_LOCATION.status is '状态';
comment on column TB_LOCATION.is_lock is '是否被锁(Y/N)';
comment on column TB_LOCATION.type is '库位类型';
comment on column TB_LOCATION.code is '库位编码';
comment on column TB_LOCATION.name is '库位名称';
comment on column TB_LOCATION.zone_code is '区';
comment on column TB_LOCATION.column_no is '列';
comment on column TB_LOCATION.row_no is '排'; 
comment on column TB_LOCATION.layer_no is '层';
comment on column TB_LOCATION.creator is '创建人(登录帐号)';
comment on column TB_LOCATION.create_time is '创建时间';
comment on column TB_LOCATION.last_operator is '最后修改人(登录帐号)';
comment on column TB_LOCATION.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_LOCATION add constraint PK_LOCATION primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign
alter table TB_LOCATION add constraint FK_LOCATION_ZONE foreign key (zone_code) references TB_ZONE (CODE);  

-- Create/Recreate default 
ALTER TABLE TB_LOCATION MODIFY version DEFAULT 0;
ALTER TABLE TB_LOCATION MODIFY is_lock DEFAULT 'N';

-- Create/Recreate  constraint 
ALTER TABLE TB_LOCATION ADD constraint CONST01_LOCATION CHECK (is_lock in('Y','N'));

-- Create/Recreate unique 
ALTER TABLE TB_LOCATION ADD CONSTRAINT UK01_TB_LOCATION UNIQUE (code) using index tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_LOCATION minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_LOCATION
(id,version,status,is_lock,type,code,name,zone_code,column_no,row_no,layer_no,creator,create_time,last_operator,update_time) 
values
(SEQ_LOCATION.nextval,0,'ACTIVE','N','STORAGE','A-01-01-01','','A',1,1,1,'350805',sysdate,'350805',sysdate);

insert into  TB_LOCATION
(id,version,status,is_lock,type,code,name,zone_code,column_no,row_no,layer_no,creator,create_time,last_operator,update_time) 
values
(SEQ_LOCATION.nextval,0,'ACTIVE','N','STORAGE','A-01-01-02','','A',1,1,2,'350805',sysdate,'350805',sysdate);
