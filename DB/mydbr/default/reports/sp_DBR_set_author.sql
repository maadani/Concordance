delimiter $$
drop procedure if exists `sp_DBR_set_author`
$$
CREATE PROCEDURE `sp_DBR_set_author`(inSonnetId int, inAuthorName varchar(50))
BEGIN

SET @sonnetName = '';
SET @authorName = '';

call concordancedb.set_author_for_sonnet(inSonnetId, inAuthorName, @sonnetName, @authorName);

select 'dbr.text', concat('The sonnet named: ', @sonnetName, ' (id:',inSonnetId, ') has changed its author to: ', @authorName);

END
$$