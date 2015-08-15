delimiter $$
drop procedure if exists `sp_DBR_get_words_for_group_id`
$$
CREATE PROCEDURE `sp_DBR_get_words_for_group_id`(inGroupId int)
BEGIN

call concordancedb.get_words_for_group(inGroupId);

END
$$