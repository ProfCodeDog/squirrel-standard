<<<<<<< HEAD
--drop table TB_NO_GENERATE

-- Create table
create table TB_NO_GENERATE
(
  id               number(18),
  gen_date         char(8),
  serial_no        number(9),
  bill_type        varchar2(64)
)tablespace SQUIRREL_DATA ;
-- Add comments to the table 
comment on table TB_NO_GENERATE is '取号表';
-- Add comments to the columns 
comment on column TB_NO_GENERATE.id is 'id';
comment on column TB_NO_GENERATE.gen_date is '取号日期(yyyymmdd)';
comment on column TB_NO_GENERATE.serial_no is '序号(每天重1开始)';
comment on column TB_NO_GENERATE.bill_type is '单据类型';

-- Create/Recreate primary
alter table TB_NO_GENERATE add constraint PK_NO_GENERATE primary key (id)  using index  tablespace SQUIRREL_DATA;  
  
-- Create/Recreate foreign

-- Create/Recreate default 
ALTER TABLE TB_NO_GENERATE MODIFY serial_no DEFAULT 0;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_NO_GENERATE ADD CONSTRAINT UK01_NO_GENERATE UNIQUE (bill_type,gen_date) using index tablespace SQUIRREL_DATA;
  
  
--新增序列
create sequence SEQ_NO_GENERATE minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_NO_GENERATE
(id,gen_date,serial_no,bill_type) 
values
=======
--drop table TB_NO_GENERATE

-- Create table
create table TB_NO_GENERATE
(
  id               number(18),
  gen_date         char(8),
  serial_no        number(9),
  bill_type        varchar2(64)
)tablespace SQUIRREL_DATA ;
-- Add comments to the table 
comment on table TB_NO_GENERATE is '取号表';
-- Add comments to the columns 
comment on column TB_NO_GENERATE.id is 'id';
comment on column TB_NO_GENERATE.gen_date is '取号日期(yyyymmdd)';
comment on column TB_NO_GENERATE.serial_no is '序号(每天重1开始)';
comment on column TB_NO_GENERATE.bill_type is '单据类型';

-- Create/Recreate primary
alter table TB_NO_GENERATE add constraint PK_NO_GENERATE primary key (id)  using index  tablespace SQUIRREL_DATA;  
  
-- Create/Recreate foreign

-- Create/Recreate default 
ALTER TABLE TB_NO_GENERATE MODIFY serial_no DEFAULT 1;

-- Create/Recreate  constraint 

-- Create/Recreate unique 
ALTER TABLE TB_NO_GENERATE ADD CONSTRAINT UK01_NO_GENERATE UNIQUE (bill_type) using index tablespace SQUIRREL_DATA;
  
  
--新增序列
create sequence SEQ_NO_GENERATE minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20; 

--初始化数据
insert into  TB_NO_GENERATE
(id,gen_date,serial_no,bill_type) 
values
>>>>>>> 6d73368cefb12c7aca2a0a40a8edb28d71bfc4ed
(SEQ_NO_GENERATE.nextval,'20180112',1,'INORDER');