
SET NOCOUNT ON;

DECLARE @RcdCnt int, @row int, @i int;




SET @RcdCnt = (SELECT count(*)   FROM [blkjckhands_01]);
SET @row = 1;
SET @i = 1;

WHILE @row <= @RcdCnt
       BEGIN
              INSERT INTO dbo.BlackJack_Games
              SELECT 
                      @i Game_Nbr
                     ,[Index_Nbr]
                     ,[PlayerNo]
                     ,[card1]
                     ,[card2]
                     ,[card3]
                     ,[card4]
                     ,[card5]
                     ,[sumofcards]
                     ,[dealcard1]
                     ,[dealcard2]
                     ,[dealcard3]
                     ,[dealcard4]
                     ,[dealcard5]
                     ,[sumofdeal]
                     ,[blkjck]
                     ,[winloss]
                     ,[plybustbeat]
                     ,[dlbustbeat]
                     ,[plwinamt]
                     ,[dlwinamt]
                     ,[ply2cardsum]
                FROM [blkjckhands_01]  b
              where b.Seq between @row AND @row + 5

              SELECT @row = @row + 6
              SET @i = @i + 1
       END


SELECT *
FROM BlackJack_Games
order by Game_Nbr, Index_Nbr, PlayerNo
