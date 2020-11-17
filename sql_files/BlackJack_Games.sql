SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [BlackJack_Games](
       [Game_Nbr] [int] NULL,
       [Index_Nbr] [int] NULL,
       [PlayerNo] [varchar](50) NULL,
       [card1] [int] NULL,
       [card2] [int] NULL,
       [card3] [int] NULL,
       [card4] [int] NULL,
       [card5] [int] NULL,
       [sumofcards] [int] NULL,
       [dealcard1] [int] NULL,
       [dealcard2] [int] NULL,
       [dealcard3] [int] NULL,
       [dealcard4] [int] NULL,
       [dealcard5] [int] NULL,
       [sumofdeal] [int] NULL,
       [blkjck] [nvarchar](255) NULL,
       [winloss] [nvarchar](255) NULL,
       [plybustbeat] [nvarchar](255) NULL,
       [dlbustbeat] [nvarchar](255) NULL,
       [plwinamt] [int] NULL,
       [dlwinamt] [int] NULL,
       [ply2cardsum] [int] NULL
) 
GO
