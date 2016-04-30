delimiter $$
drop procedure if exists `sp_DBR_char_count_for_sonnet`
$$
CREATE PROCEDURE `sp_DBR_char_count_for_sonnet`()
BEGIN

select 'dbr.hidecolumn', 'sonnet_id';

select 'dbr.report','sp_DBR_get_char_count_per_section_for_sonnet','inSonnetId=sonnet_id';

call concordancedb.get_char_count_per_sonnet();

END
$$