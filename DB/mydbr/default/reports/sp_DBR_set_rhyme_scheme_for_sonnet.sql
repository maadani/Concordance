delimiter $$
drop procedure if exists `sp_DBR_set_rhyme_scheme_for_sonnet`
$$
CREATE PROCEDURE `sp_DBR_set_rhyme_scheme_for_sonnet`(IN inSonnetId int, IN inRhymeScheme varchar(32))
BEGIN

SET @sonnetName = '';
SET @newRhymeScheme = '';

call concordancedb.set_rhyme_scheme_for_sonnet(inSonnetId, inRhymeScheme, @sonnetName, @newRhymeScheme); 

select 'dbr.text', concat('The sonnet named: ', @sonnetName, ' (id:',inSonnetId, ') has changed its Rhyme Scheme to: ', @newRhymeScheme);

END
$$