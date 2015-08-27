delimiter $$
drop procedure if exists `sp_DBR_dummy_rpt`
$$
CREATE PROCEDURE `sp_DBR_dummy_rpt`(in_word_id int)
BEGIN

  select 'dbr.title', in_word_id;

	select 'dbr.read_recipe';
    call concordancedb.get_locations_for_word(in_word_id);
    select 'dbr.text', 'Text';

END
$$