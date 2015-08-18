delimiter $$
drop procedure if exists `sp_DBR_dummy_rpt`
$$
CREATE PROCEDURE `sp_DBR_dummy_rpt`()
BEGIN

  select 'dbr.title', 'Title';

	select 'dbr.read_recipe', 'ttt';
    select '';#just to have a result set. We can use this for the words+location list. 
    select 'dbr.text', 'Text';

END
$$