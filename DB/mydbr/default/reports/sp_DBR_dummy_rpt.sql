delimiter $$
drop procedure if exists `sp_DBR_dummy_rpt`
$$
CREATE PROCEDURE `sp_DBR_dummy_rpt`(inGroupId int)
BEGIN

  select 'dbr.title', inGroupId;

  select 'dbr.text', concat('<a href=\"http://localhost/dblab/mydbr/report.php?r=7&m=1&h=229ec3dd8cd18ad65bdc1fdaad919c61192b32c3&u1=', inGroupId, '\">test</a>');


END
$$