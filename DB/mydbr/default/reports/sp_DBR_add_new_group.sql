delimiter $$
drop procedure if exists `sp_DBR_add_new_group`
$$
CREATE PROCEDURE `sp_DBR_add_new_group`(vGroupName varchar(45))
BEGIN

call concordancedb.sp_new_group(vGroupName);

END
$$