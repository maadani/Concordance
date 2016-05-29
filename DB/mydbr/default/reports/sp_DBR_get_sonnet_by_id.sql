delimiter $$
drop procedure if exists `sp_DBR_get_sonnet_by_id`
$$
CREATE PROCEDURE `sp_DBR_get_sonnet_by_id`(inSonnetId int)
BEGIN

call concordancedb.get_sonnet_by_id(inSonnetId);

END
$$