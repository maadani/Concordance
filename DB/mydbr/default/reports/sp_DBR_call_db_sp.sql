delimiter $$
drop procedure if exists `sp_DBR_call_db_sp`
$$
CREATE PROCEDURE `sp_DBR_call_db_sp`(vGroupName varchar(45))
BEGIN

call concordancedb.sp_new_group(vGroupName);

END
$$