USE [SHOESHOP]
GO
/****** Object:  StoredProcedure [dbo].[AddProductToCart]    Script Date: 05/22/2012 01:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[AddProductToCart]
(
	@pno int,
	@stockID int
)
AS
INSERT INTO CARTPRODUCT (Pno,StockID) VALUES (@pno, @stockID)