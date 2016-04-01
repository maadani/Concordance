delimiter $$
drop procedure if exists `sp_DBR_get_words_for_relation`
$$
CREATE PROCEDURE `sp_DBR_get_words_for_relation`(inRelationId int)
BEGIN

CALL concordancedb.get_words_for_relation(inRelationId);

END
$$