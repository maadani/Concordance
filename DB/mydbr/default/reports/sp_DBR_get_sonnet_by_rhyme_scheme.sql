delimiter $$
drop procedure if exists `sp_DBR_get_sonnet_by_rhyme_scheme`
$$
CREATE PROCEDURE `sp_DBR_get_sonnet_by_rhyme_scheme`(inRhymeScheme varchar(32))
BEGIN

call concordancedb.get_sonnet_by_rhyme_scheme(inRhymeScheme);

END
$$