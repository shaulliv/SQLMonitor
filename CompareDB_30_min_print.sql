/* checkes running count field now and 30 minutes ago.
If the two values are the same the table is not being written to.
Good for DB's that are not being writte to havily all the time (i.e. low volume at night).
outputs results as select */
declare @ivr1 int
declare @ivr2 int
select top 1 @ivr1=[RunningCountField] from [DBName] order by Id desc
select top 1 @ivr2=[RunningCountField] from [DBName] where dateandtime < dateadd(minute, -30, GETDATE()) order by Id desc
--debbuging line
--select @ivr1,@ivr2
IF (@ivr1 != @ivr2)
	PRINT '1'
ELSE IF (@ivr1 = @ivr2)
	PRINT '0'
