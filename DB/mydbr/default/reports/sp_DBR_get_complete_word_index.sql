delimiter $$
drop procedure if exists `sp_DBR_get_complete_word_index`
$$
CREATE PROCEDURE `sp_DBR_get_complete_word_index`()
BEGIN

select 'dbr.colstyle', 'word_id', '%d';
select 'dbr.index_displayer';
call concordancedb.get_word_index_for_sonnet(0);

END
$$