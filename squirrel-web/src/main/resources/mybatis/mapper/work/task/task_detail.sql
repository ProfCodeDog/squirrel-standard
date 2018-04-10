--drop table TB_TASK_DETAIL;

-- Create table
create table TB_TASK_DETAIL
(
  id                 number(18),
  version            number(9),
  task_code          varchar2(64),
  relationdetail_id	 number(18),
  inventorydetail_id number(18),
  move_quantity		 number(9),
  confirm_quantity	 number(9),
  ltol				 number(9),
  remarks            varchar2(255),
  creator            varchar2(64),
  create_time        timestamp(3),
  last_operator      varchar2(64),
  update_time        timestamp(3)
)tablespace SQUIRREL_WEB_DATA ;
-- Add comments to the table 
comment on table TB_TASK_DETAIL is '作业单明细表';
-- Add comments to the columns 
comment on column TB_TASK_DETAIL.id is 'ID';
comment on column TB_TASK_DETAIL.version is '版本';
comment on column TB_TASK_DETAIL.task_code is '作业单号';
comment on column TB_TASK_DETAIL.relationdetail_id is '关联单据明细';
comment on column TB_TASK_DETAIL.inventorydetail_id is '关联库存';
comment on column TB_TASK_DETAIL.move_quantity is '移位数量';
comment on column TB_TASK_DETAIL.confirm_quantity is '确认移位数量';
comment on column TB_TASK_DETAIL.ltol is '1to1(移入移出库位关联)';
comment on column TB_TASK_DETAIL.remarks is '备注'; 
comment on column TB_TASK_DETAIL.creator is '创建人(登录帐号)';
comment on column TB_TASK_DETAIL.create_time is '创建时间';
comment on column TB_TASK_DETAIL.last_operator is '最后修改人(登录帐号)';
comment on column TB_TASK_DETAIL.update_time is '修改时间';
  
-- Create/Recreate primary
alter table TB_TASK_DETAIL add constraint PK_TASK_DETAIL primary key (id) using index tablespace SQUIRREL_WEB_DATA;  
  
-- Create/Recreate foreign
alter table TB_TASK_DETAIL add constraint FK_TASKDETAIL_TASK foreign key (task_code) references TB_TASK (code);  
  
-- 创建默认值
ALTER TABLE TB_TASK_DETAIL MODIFY version DEFAULT 0;
ALTER TABLE TB_TASK_DETAIL MODIFY ltol DEFAULT 0;

--创建约束

--创建唯一索引
ALTER TABLE TB_TASK_DETAIL ADD CONSTRAINT UK01_TASK_DETAIL UNIQUE (task_code,relationdetail_id,inventorydetail_id) using index  tablespace SQUIRREL_WEB_DATA;

--新增序列
create sequence SEQ_TASK_DETAIL minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_TASK_DETAIL
(id,version,task_code,relationdetail_id,inventorydetail_id,move_quantity,confirm_quantity,ltol,remarks,creator,create_time,last_operator,update_time)  
values
(SEQ_TASK_DETAIL.nextval,0,'TK2018010100000001',1,1,5,0,0,'........描述....','350805',sysdate,'350805',sysdate);   
