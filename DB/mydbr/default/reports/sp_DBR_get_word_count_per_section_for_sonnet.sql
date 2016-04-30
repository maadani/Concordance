delimiter $$
drop procedure if exists `sp_DBR_get_word_count_per_section_for_sonnet`
$$
CREATE PROCEDURE `sp_DBR_get_word_count_per_section_for_sonnet`(inSonnetId int)
BEGIN

select 'dbr.hidecolumn', 'sonnet_id';

select 'dbr.sum', 'Num of Words';

select 'dbr.report', 'sp_DBR_word_count_per_line_for_section', 'inSonnetId=(inSonnetId)', 'inSectionIndex=section index';

call concordancedb.get_word_count_per_section_for_sonnet(inSonnetId);

END
$$