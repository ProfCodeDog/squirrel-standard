/*创建一个数据库*/
DROP DATABASE IF EXISTS SQUIRREL_USER ;
CREATE DATABASE SQUIRREL_USER CHARACTER SET UTF8 ;
/*授权test用户拥有testDB数据库的所有权限*/
grant all privileges on SQUIRREL_USER.* to SQUIRREL_USER@localhost identified by 'SQUIRREL_USER';
/*刷新系统权限表*/
flush privileges;
/*授权用户拥有所有数据库的某些权限*/
grant select,delete,update,create,drop on SQUIRREL_USER.* to SQUIRREL_USER@localhost identified by "SQUIRREL_USER";




/*创建序列*/

DROP TABLE IF EXISTS sequence;
-- 建sequence表，指定seq列为无符号大整型，可支持无符号值：0(default)到18446744073709551615（0到2^64–1）。
CREATE TABLE sequence (
   name       VARCHAR(50) NOT NULL,
     current_value   BIGINT UNSIGNED NOT NULL DEFAULT 0,
     increment     INT NOT NULL DEFAULT 1,
     PRIMARY KEY (name)  -- 不允许重复seq的存在。
) ENGINE=InnoDB;


DELIMITER /

DROP FUNCTION IF EXISTS currval /

CREATE FUNCTION currval(seq_name VARCHAR(50))
RETURNS BIGINT
BEGIN
     DECLARE value BIGINT;
     SELECT current_value INTO value
     FROM sequence
     WHERE upper(name) = upper(seq_name); -- 大小写不区分.
     RETURN value;
END;
/

DELIMITER ;


DELIMITER /

DROP FUNCTION IF EXISTS nextval /

CREATE FUNCTION nextval (seq_name VARCHAR(50))
RETURNS BIGINT
BEGIN
     DECLARE value BIGINT;
     UPDATE sequence
     SET current_value = current_value + increment
     WHERE upper(name) = upper(seq_name);
     RETURN currval(seq_name);
END;
/

DELIMITER ;

DELIMITER /

DROP FUNCTION IF EXISTS setval /

CREATE FUNCTION setval (seq_name VARCHAR(50), value BIGINT)
RETURNS BIGINT
BEGIN
     UPDATE sequence
     SET current_value = value
     WHERE upper(name) = upper(seq_name);
     RETURN currval(seq_name);
END;
/

DELIMITER ;