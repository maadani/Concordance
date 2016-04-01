delimiter $$
drop procedure if exists `sp_DBR_add_word_to_group`
$$
CREATE PROCEDURE `sp_DBR_add_word_to_group`(inWordId int, inGroupId int)
BEGIN

call concordancedb.sp_add_word_to_group(inWordId , inGroupId );
select 'dbr.text', 'Word has been added.';

END
$$