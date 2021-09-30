/* checkes running count field two seconds apart.
If the two values are the same the table is not being written to.
Good for DB's that are being writte to havily all the time.
outputs result as print */
DECLARE @segid1 INT
DECLARE @segid2 INT
select top 1 @segid1=[RunningCountField] from [DBName] order by [dateandtime] desc
--debugging line
--SELECT @segid1
waitfor delay '00:00:02';
select top 1 @segid2=[RunningCountField] from [DBName] order by [dateandtime] desc
--debugging line
--SELECT @segid2,@segid1
IF (@segid1 != @segid2)
	PRINT '1'
ELSE IF (@segid1 = @segid2)
	PRINT '0'
