delimiter $$
drop procedure if exists `sp_DBR_add_expression`
$$
CREATE PROCEDURE `sp_DBR_add_expression`(inExpression varchar(250))
BEGIN

select 'dbr.text', concat('The expresion \"', inExpression, '\" was added.');
select 'dbr.expr_parser';
select inExpression as 'expression';

END
$$