delimiter $$
drop procedure if exists `sp_DBR_load_file`
$$
CREATE PROCEDURE `sp_DBR_load_file`(inFullFilePath varchar(200))
BEGIN

select 'dbr.text', concat('The file: ', inFullFilePath, ' was loaded successfully');
select 'dbr.file_parser';
select inFullFilePath as 'path';

END
$$