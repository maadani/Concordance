delimiter $$
drop procedure if exists `sp_DBR_get_sonnet_by_word`
$$
CREATE PROCEDURE `sp_DBR_get_sonnet_by_word`(inWordId int)
BEGIN

call concordancedb.get_sonnet_by_word(inWordId);

END
$$