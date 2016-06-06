delimiter $$
drop procedure if exists `sp_DBR_find_expression`
$$
CREATE PROCEDURE `sp_DBR_find_expression`(inExprId int, inSonnetId int)
BEGIN

#select 'dbr.text', concat('inExprId: ', inExprId, '; inSonnetId: ', inSonnetId);
call concordancedb.find_expr_in_sonnet(inExprId, inSonnetId);

END
$$