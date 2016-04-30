delimiter $$
drop procedure if exists `sp_DBR_char_count_per_line_for_section`
$$
CREATE PROCEDURE `sp_DBR_char_count_per_line_for_section`(inSonnetId int, inSectionIndex int)
BEGIN

select 'dbr.hidecolumn', 'sonnet_id';

select 'dbr.sum', 'Num of Chars';

select 'dbr.report', 'sp_DBR_char_count_per_word_for_line', 'inSonnetId=(inSonnetId)', 'inSectionIndex=(inSectionIndex)', 'inLineIndex=line index';


call concordancedb.get_char_count_per_line_for_section(inSonnetId, inSectionIndex);

END
$$