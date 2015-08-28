delimiter $$
drop procedure if exists `sp_DBR_find_recipe`
$$
CREATE PROCEDURE `sp_DBR_find_recipe`(inName varchar(45), inAuther varchar(45), inCategoryId int, inContainsText varchar(200))
BEGIN

call concordancedb.get_recipe_by_params(inName, inAuther, inCategoryId, inContainsText);


END
$$