--drop table TB_TASK;

-- Create table
create table TB_TASK
(
  id                 number(18),
  version            number(9),
  status             VARCHAR2(64),
  code               VARCHAR2(64),
  bill_type          VARCHAR2(64),
  relation_code 	 VARCHAR2(64),
  worker_code        varchar2(64),
  zone_code		     varchar2(64),
  remarks            varchar2(255),
  creator            varchar2(64),
  create_time        timestamp(3),
  last_operator      varchar2(64),
  update_time        timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_TASK is '作业单任务集合表';
-- Add comments to the columns 
comment on column TB_TASK.id is 'ID';
comment on column TB_TASK.version is '版本';
comment on column TB_TASK.status is '状态';
comment on column TB_TASK.code is '作业单号';
comment on column TB_TASK.bill_type is '作业任务类型';
comment on column TB_TASK.relation_code is '关联单据号';
comment on column TB_TASK.worker_code is '操作人员';
comment on column TB_TASK.zone_code is '工作区';
comment on column TB_TASK.remarks is '备注'; 
comment on column TB_TASK.creator is '创建人(登录帐号)';
comment on column TB_TASK.create_time is '创建时间';
comment on column TB_TASK.last_operator is '最后修改人(登录帐号)';
comment on column TB_TASK.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_TASK add constraint PK_TASK primary key (id) using index  tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign

-- 创建默认值
ALTER TABLE TB_TASK MODIFY version DEFAULT 0;

--创建约束

--创建唯一索引
ALTER TABLE TB_TASK ADD CONSTRAINT UK01_TASK UNIQUE (code) using index  tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_TASK minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_TASK
(id,version,status,code,bill_type,relation_code,worker_code,zone_code,remarks,creator,create_time,last_operator,update_time)  
values
(SEQ_TASK.nextval,0,'ACTIVE','TK2018010100000001','WD_TASK','PK2018010100000001','350805','A','........描述....','350805',sysdate,'350805',sysdate);  
