delimiter $$
drop procedure if exists `sp_DBR_add_words_to_relation`
$$
CREATE PROCEDURE `sp_DBR_add_words_to_relation`(inRelationId int, inFirstWordId int, inSecondWordId int)
BEGIN
call concordancedb.sp_add_words_to_relation(inRelationId, inFirstWordId, inSecondWordId);
select 'dbr.text', 'test';

END
$$