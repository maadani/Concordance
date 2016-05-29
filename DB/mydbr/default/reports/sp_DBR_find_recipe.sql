delimiter $$
drop procedure if exists `sp_DBR_find_recipe`
$$
CREATE PROCEDURE `sp_DBR_find_recipe`(inSonnetId int, inAuther varchar(45), inSequenceId int, inContainsText varchar(200))
BEGIN

/*
select 'dbr.text', concat('inSonnetId: ', inSonnetId);
select 'dbr.text', concat('inAuther: ', inAuther);
select 'dbr.text', concat('inSequenceId: ', inSequenceId);
select 'dbr.text', concat('inContainsText: ', inContainsText);
*/



call concordancedb.get_sonnet_by_params(inSonnetId, inAuther, inSequenceId, inContainsText);

END
$$