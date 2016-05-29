delimiter $$
drop procedure if exists `sp_DBR_get_sonnet_by_sequence`
$$
CREATE PROCEDURE `sp_DBR_get_sonnet_by_sequence`(inSeqId int)
BEGIN

call concordancedb.get_sonnet_by_sequence(inSeqId);

END
$$