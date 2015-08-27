delimiter $$
drop procedure if exists `sp_DBR_get_locations_for_group`
$$
CREATE PROCEDURE `sp_DBR_get_locations_for_group`(inGroupId int)
BEGIN

call concordancedb.get_locations_for_group(inGroupId);

END
$$