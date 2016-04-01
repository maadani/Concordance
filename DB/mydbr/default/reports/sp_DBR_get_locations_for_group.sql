delimiter $$
drop procedure if exists `sp_DBR_get_locations_for_group`
$$
CREATE PROCEDURE `sp_DBR_get_locations_for_group`(inGroupId int)
BEGIN

select 'dbr.index_displayer';
call concordancedb.get_word_index_for_group(inGroupId);

END
$$