delimiter $$
drop procedure if exists `sp_DBR_add_new_relation`
$$
CREATE PROCEDURE `sp_DBR_add_new_relation`(inName varchar(45), inDesc varchar(200))
BEGIN

declare result int;
declare vtext varchar( 100 );

call concordancedb.sp_add_new_relation(inName, inDesc, result);

if (result = 1)  then
  set vtext = concat('The new ', inName, ' relation was added.');  
else
  set vtext = concat('There was a problem adding the new ', inName , ' relation.');
  
end if;

select 'dbr.text', vtext;

END
$$