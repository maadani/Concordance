delimiter $$
drop procedure if exists `sp_DBR_group_lookup`
$$
CREATE PROCEDURE `sp_DBR_group_lookup`(vGroupName varchar(45))
BEGIN

select
	g.group_id as 'Group_id',
	g.group_name as 'Group_name',
	g.comment as 'Comment'
from concordancedb.groups g
where g.group_name like concat ('%', vGroupName, '%');

END
$$