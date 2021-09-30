/* checkes running count field now and 30 minutes ago in UTC time.
If the two values are the same the table is not being written to.
Good for DB's that are not being writte to havily all the time (i.e. low volume at night).
outputs results as print */
DECLARE @segid1 INT
DECLARE @segid2 INT
select top 1 @segid1=[RunningCountField] from [DBName] order by [dateandtime] desc
--debugging line
--SELECT @segid1
select top 1 @segid2=[RunningCountField] from [DBName] where [dateandtime] < dateadd(minute, -30, GETUTCDATE()) order by [dateandtime] desc
--debugging line
--SELECT @segid2,@segid1
IF (@segid1 != @segid2)
	PRINT '1'
ELSE IF (@segid1 = @segid2)
	PRINT '0'
