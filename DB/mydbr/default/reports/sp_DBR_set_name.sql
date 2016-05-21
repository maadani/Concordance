delimiter $$
drop procedure if exists `sp_DBR_set_name`
$$
CREATE PROCEDURE `sp_DBR_set_name`(inSonnetId int, inName varchar(50))
BEGIN

SET @oldSonnetName = '';
SET @newSonnetName = '';

call concordancedb.set_name_for_sonnet(inSonnetId, inName, @oldSonnetName, @newSonnetName);

select 'dbr.text', concat('The sonnet named: ', @oldSonnetName, ' (id:',inSonnetId, ') has changed its name to: ', @newSonnetName);

END
$$