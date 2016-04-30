delimiter $$
drop procedure if exists `sp_DBR_char_count_per_word_for_line`
$$
CREATE PROCEDURE `sp_DBR_char_count_per_word_for_line`(inSonnetId int, inSectionIndex int, inLineIndex int)
BEGIN

select 'dbr.hidecolumn', 'sonnet_id';

select 'dbr.sum', 'Num of Chars';

call concordancedb.get_char_count_per_word_for_line(inSonnetId, inSectionIndex, inLineIndex);

END
$$