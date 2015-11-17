delimiter $$
drop procedure if exists `sp_DBR_words_by_recipe`
$$
CREATE PROCEDURE `sp_DBR_words_by_recipe`(inSonnetId int)
BEGIN

select 'dbr.report', 'sp_DBR_context_for_word','in_word_id=word_id';

call concordancedb.get_sonnet_words_by_sonnet_id(inSonnetId);

END
$$