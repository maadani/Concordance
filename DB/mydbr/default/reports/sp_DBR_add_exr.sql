delimiter $$
drop procedure if exists `sp_DBR_add_exr`
$$
CREATE PROCEDURE `sp_DBR_add_exr`(inTextFromUser varchar(250))
BEGIN

#select 'dbr.file_parser';
select inTextFromUser as 'path';

END
$$