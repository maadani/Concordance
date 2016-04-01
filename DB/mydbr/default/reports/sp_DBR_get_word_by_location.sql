delimiter $$
drop procedure if exists `sp_DBR_get_word_by_location`
$$
CREATE PROCEDURE `sp_DBR_get_word_by_location`(inSonnetId int, inLineIndex int, inWordInLineIndex int)
BEGIN

select 'dbr.title', 'Words By Locations';
select 'dbr.colstyle', 'word_id', '%d';
#select 'dbr.index_displayer';
call concordancedb.get_words_by_location(inSonnetId, inLineIndex, inWordInLineIndex);


END
$$