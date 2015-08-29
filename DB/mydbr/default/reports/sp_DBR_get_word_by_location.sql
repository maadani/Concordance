delimiter $$
drop procedure if exists `sp_DBR_get_word_by_location`
$$
CREATE PROCEDURE `sp_DBR_get_word_by_location`(inRecipeId int, inLineIndex int, inWordInLineIndex int, inSectionId int)
BEGIN

select 'dbr.title', 'Words By Locations';
call concordancedb.get_words_by_location(inRecipeId, inLineIndex, inWordInLineIndex, inSectionId);


END
$$