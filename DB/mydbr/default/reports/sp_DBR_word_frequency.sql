delimiter $$
drop procedure if exists `sp_DBR_word_frequency`
$$
CREATE PROCEDURE `sp_DBR_word_frequency`(inWordId int)
BEGIN

call concordancedb.get_word_frequency(inWordId);

END
$$