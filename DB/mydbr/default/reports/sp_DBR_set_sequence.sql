delimiter $$
drop procedure if exists `sp_DBR_set_sequence`
$$
CREATE PROCEDURE `sp_DBR_set_sequence`(inSonnetId int, inSeqId int)
BEGIN

SET @sonnetName = '';
SET @seqName = '';

call concordancedb.set_seq_for_sonnet(inSonnetId, inSeqId, @sonnetName, @seqName);

select 'dbr.text', concat('The sonnet named: ', @sonnetName, ' (id:',inSonnetId, ') has changed its seq to: ', @seqName);


END
$$