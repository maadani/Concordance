delimiter $$
drop procedure if exists `sp_DBR_context_for_word`
$$
CREATE PROCEDURE `sp_DBR_context_for_word`(in_word_id int)
BEGIN

  select 'dbr.title', in_word_id;

  select 'dbr.read_recipe';
  call concordancedb.get_locations_for_word(in_word_id);
  select 'dbr.text', 'Text';

END
$$