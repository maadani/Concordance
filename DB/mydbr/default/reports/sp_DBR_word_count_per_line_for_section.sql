delimiter $$
drop procedure if exists `sp_DBR_word_count_per_line_for_section`
$$
CREATE PROCEDURE `sp_DBR_word_count_per_line_for_section`(inSonnetId int, inSectionIndex int)
BEGIN

select 'dbr.hidecolumn', 'sonnet_id';

select 'dbr.sum', 'Num of Words';

call concordancedb.word_count_per_line_for_section(inSonnetId, inSectionIndex);

END
$$