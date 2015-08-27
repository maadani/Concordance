delimiter $$
drop procedure if exists `sp_DBR_words_by_recipe`
$$
CREATE PROCEDURE `sp_DBR_words_by_recipe`(inRecipeId int)
BEGIN

select 'dbr.report', 'sp_DBR_context_for_word','in_word_id=id';

call concordancedb.get_recipe_words_by_recipe_id(inRecipeId);

END
$$