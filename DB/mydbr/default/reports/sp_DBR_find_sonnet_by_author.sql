delimiter $$
drop procedure if exists `sp_DBR_find_sonnet_by_author`
$$
CREATE PROCEDURE `sp_DBR_find_sonnet_by_author`(inAuthorName varchar (50))
BEGIN

call concordancedb.get_sonnet_by_author(inAuthorName);
END
$$