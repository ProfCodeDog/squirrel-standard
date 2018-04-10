---drop table TB_ZONE;		
  		  
  -- Create table		  
create table TB_ZONE		
(		  
  id               number(18),		
  version		   number(9),		
  status           varchar2(16),	
  code             varchar2(64),	
  name             varchar2(64),	
  low_temperature  number(8,3),		
  high_temperature number(8,3),	
  x_pos            number(8,3),   
  y_pos            number(8,3),   
  remarks          varchar2(255),  
  creator          varchar2(64),  
  create_time      timestamp(3),  
  last_operator    varchar2(64),  
  update_time      timestamp(3)  
)tablespace SQUIRREL_WEB_DATA;    
-- Add comments to the table   
comment on table TB_ZONE is '库区表';     
-- Add comments to the columns
comment on column TB_ZONE.id is 'ID';     
comment on column TB_ZONE.version is '版本';         
comment on column TB_ZONE.status is '状态';       
comment on column TB_ZONE.code is '库区代码';     
comment on column TB_ZONE.name is '库区名称';     
comment on column TB_ZONE.low_temperature is '额定最低温度';     
comment on column TB_ZONE.high_temperature is '额定最高温度';    
comment on column TB_ZONE.x_pos is 'x坐标';    
comment on column TB_ZONE.y_pos is 'y坐标';     
comment on column TB_ZONE.remarks is '备注';    
comment on column TB_ZONE.creator is '创建人(登录帐号)';        
comment on column TB_ZONE.create_time is '创建时间';        
comment on column TB_ZONE.last_operator is '最后修改人(登录帐号)';     
comment on column TB_ZONE.update_time is '修改时间';      

-- Create/Recreate primary     
alter table TB_ZONE add constraint PK_ZONE primary key (id) using index tablespace SQUIRREL_WEB_DATA;        
  
-- Create/Recreate foreign
        
-- Create/Recreate default       
ALTER TABLE TB_ZONE MODIFY version DEFAULT 0;  
       
-- Create/Recreate  constraint 
        
-- Create/Recreate unique 
ALTER TABLE TB_ZONE  ADD CONSTRAINT UK01_ZONE UNIQUE (code) using index  tablespace SQUIRREL_WEB_DATA;   
  
--新增序列   
create sequence SEQ_ZONE minvalue 1 maxvalue 999999999999999999 start with 1 increment by 1 cache 20;      
        
--初始化数据     
insert into  TB_ZONE    
 (id,version,status,code,name,low_temperature,high_temperature,x_pos,y_pos,remarks,creator,create_time,last_operator,update_time)   
values
 (SEQ_ZONE.nextval,0,'ACTIVE','A','A',12,50,12.3,85.2,'描述','350805',sysdate,'350805',sysdate);
insert into  TB_ZONE    
 (id,version,status,code,name,low_temperature,high_temperature,x_pos,y_pos,remarks,creator,create_time,last_operator,update_time)   
values
 (SEQ_ZONE.nextval,0,'ACTIVE','B','B',12,50,12.3,85.2,'描述','350805',sysdate,'350805',sysdate);
insert into  TB_ZONE    
 (id,version,status,code,name,low_temperature,high_temperature,x_pos,y_pos,remarks,creator,create_time,last_operator,update_time)   
values
 (SEQ_ZONE.nextval,0,'ACTIVE','C','C',12,50,12.3,85.2,'描述','350805',sysdate,'350805',sysdate);
insert into  TB_ZONE    
 (id,version,status,code,name,low_temperature,high_temperature,x_pos,y_pos,remarks,creator,create_time,last_operator,update_time)   
values
 (SEQ_ZONE.nextval,0,'ACTIVE','D','D',12,50,12.3,85.2,'描述','350805',sysdate,'350805',sysdate); 