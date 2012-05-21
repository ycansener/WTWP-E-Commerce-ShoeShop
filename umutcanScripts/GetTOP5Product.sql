USE [SHOESHOP]
GO
/****** Object:  StoredProcedure [dbo].[GetTOP5Product]    Script Date: 05/21/2012 23:49:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[GetTOP5Product]

as
SELECT TOP (5) SUM(Amount) AS 'ToplamSatis'
FROM SALEPRODUCT, PRODUCT, PRODUCER
WHERE PRODUCER.ProducerID = PRODUCT.ProducerID and  
SALEPRODUCT.ProductID = PRODUCT.ProductID 
GROUP BY PRODUCT.ProductID ORDER BY 'ToplamSatis' DESC