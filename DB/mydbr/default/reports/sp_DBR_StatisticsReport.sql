delimiter $$
drop procedure if exists `sp_DBR_StatisticsReport`
$$
CREATE PROCEDURE `sp_DBR_StatisticsReport`(
inReportID int,
inStartDate date,
inEndDate date
)
BEGIN

declare vDay date;
declare vEndTime datetime;
declare vCnt int;
declare vDayCnt int;
declare vProcName varchar(100);

select proc_name into vProcName
from mydbr_reports
where report_id = inReportID;

set vEndTime = addtime(cast(inEndDate as datetime), '23:59:59');

select datediff(vEndTime, inStartDate) into vDayCnt;

select 'dbr.pageview';

select name as 'Report', 
       proc_name as 'Procedure', 
       concat( inStartDate, ' - ', inEndDate) as 'Period'
from mydbr_reports
where proc_name = vProcName;

select count(*) into vCnt
from mydbr_statistics s
where proc_name = vProcName and s.start_time between inStartDate and vEndTime;


if (vDayCnt<0) then
  select 'dbr.hideheader';
  select 'Check the dates!';
else
  if (vCnt = 0 ) then
    select 'dbr.hideheader';
    select 'Report has not been run during selected period!';
  else
    if (vDayCnt<32) then

    create temporary table tmp_cnt (
    day date,
    cnt int
    ) ENGINE=MEMORY;

    insert into tmp_cnt ( day, cnt )
    select cast(start_time as date), count(*)
    from mydbr_statistics
    where proc_name= vProcName and start_time between inStartDate and vEndTime
    group by cast(start_time as date);

    while (vDayCnt >= 0) do
      set vDay = vEndTime - interval vDayCnt day;
      insert into tmp_cnt ( day, cnt )
      values (vDay, 0);

      set vDayCnt = vDayCnt -1;
    end while;

    select 'dbr.chart', 'bar';
    select 'dbr.chart.color', '0x0099CC';

    select day, sum(cnt)
    from tmp_cnt
    group by day;

    drop temporary table tmp_cnt;
  end if;

  select 'dbr.keepwithnext';

  select 
    ifnull(u.name , s.username) as 'User', 
    count(*) as 'Run count'
  from mydbr_statistics s left join mydbr_userlogin u on s.username=u.user
  where proc_name = vProcName and s.start_time between inStartDate and vEndTime
  group by 1
  order by 2 desc;


  select 'dbr.colstyle', 'exec_time', 'hh:mm:ss';

  select 
    ifnull(u.name , s.username) as 'User', 
    start_time as 'Report run', 
    timediff(s.end_time,s.start_time) as 'Execution time[exec_time]',
    query as 'Query'
  from mydbr_statistics s left join mydbr_userlogin u on s.username=u.user
  where proc_name = vProcName and s.start_time between inStartDate and vEndTime
  order by start_time desc;

  end if;
end if;
END
$$