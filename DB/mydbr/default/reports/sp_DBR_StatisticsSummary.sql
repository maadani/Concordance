delimiter $$
drop procedure if exists `sp_DBR_StatisticsSummary`
$$
CREATE PROCEDURE `sp_DBR_StatisticsSummary`(
inRowCount int,
inStartDate date,
inEndDate date
)
BEGIN
declare vEndTime datetime;

select 'dbr.parameters.show';
select 'dbr.title', concat('Statistics summary ', inStartDate, ' - ', inEndDate);

set vEndTime = addtime(cast(inEndDate as datetime), '23:59:59');

select 'dbr.subtitle', concat(inRowCount, ' Most active users');

/* Not included in distribution */
select 'dbr.report', 'sp_DBR_userusage', 'popup', '[Name]', 'inUser=Username', 'inStartDate=(inStartDate)', 'inEndDate=(inEndDate)';
select 'dbr.hidecolumns', 'Username';

select 'dbr.sum', 'Cnt';

set @num = 0;

select @num := (@num + 1) as '#', 
     Name, 
     Cnt as 'Count',
     Username
from ( select ifnull(u. name , s.username) as 'Name', s.username as 'Username', count(*) as 'Cnt'
  from (select @rows := 0) as x, mydbr_statistics s left join mydbr_userlogin u on s.username= u.user
  where s.start_time between inStartDate and vEndTime
  group by 1, s.username
  having ((@rows := @rows + 1) <= inRowCount )
  order by 3 desc
) as q;


select 'dbr.subtitle', concat(inRowCount, ' Most used reports');

select 'dbr.report', 'sp_DBR_StatisticsReport','inReportID=report_id','inStartDate=(inStartDate)', 'inEndDate=(inEndDate)';
select 'dbr.hidecolumns', 'report_id';
select 'dbr.sum', 'Count';

set @num = 0;

select  @num := (@num + 1) as '#', 
    Name,
    sp as 'Stored procedure', 
    Cnt as 'Count',
    report_id
from (
  select 
    r.name as 'Name', 
    s.proc_name as 'sp', 
    count(*) as 'Cnt', 
    r.report_id
  from mydbr_statistics s, mydbr_reports r, (select @rows := 0) as x
  where s.proc_name=r.proc_name and s.start_time between inStartDate and vEndTime
  group by r.name, s.proc_name, r.report_id
  having ((@rows := @rows + 1) <= inRowCount )
  order by 3 desc
) as q;

select 'dbr.subtitle', concat(inRowCount, ' Slowest reports');


select 'dbr.report', 'sp_DBR_StatisticsReport','inReportID=report_id','inStartDate=(inStartDate)', 'inEndDate=(inEndDate)';
select 'dbr.hidecolumns', 'report_id';

set @num = 0;

select 'dbr.colstyle', 'Min', 'hh:mm:ss';
select 'dbr.colstyle', 'Avg', 'hh:mm:ss';
select 'dbr.colstyle', 'Max', 'hh:mm:ss';

select  @num := (@num + 1) as '#', 
    name as 'Report',
    proc_name as 'Stored procedure',
    Counts as 'Count',
    Mini as 'Min',
    Avge as 'Avg',
    Maxi as 'Max',
    report_id
from (
  select
    r.name,
    s.proc_name,
    count(*) as 'Counts', 
    sec_to_time(min(time_to_sec(timediff(s.end_time,s.start_time)))) as 'Mini', 
    sec_to_time(cast(avg(time_to_sec(timediff(s.end_time,s.start_time))) as signed)) as 'Avge', 
    sec_to_time(max(time_to_sec(timediff(s.end_time,s.start_time)))) as 'Maxi', 
    r.report_id
  from mydbr_statistics s, mydbr_reports r, (select @rows := 0) as x
  where s.proc_name = r.proc_name and s.start_time between inStartDate and vEndTime
  group by r.name, s.proc_name, r.report_id
  having ((@rows := @rows + 1) <= inRowCount )
  order by 5 desc
) as q;


END
$$