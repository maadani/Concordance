delimiter $$
drop procedure if exists `sp_DBR_get_complete_word_index`
$$
CREATE PROCEDURE `sp_DBR_get_complete_word_index`()
BEGIN

call sp_DBR_get_locations_for_group(0);

END
$$