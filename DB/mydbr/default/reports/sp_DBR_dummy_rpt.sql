delimiter $$
drop procedure if exists `sp_DBR_dummy_rpt`
$$
CREATE PROCEDURE `sp_DBR_dummy_rpt`()
BEGIN

  select 'dbr.title', 'Title';

	select 'dbr.read_recipe', 'Adrak';
    SELECT * FROM concordancedb.words_in_recipes;
    select 'dbr.text', 'Text';

END
$$