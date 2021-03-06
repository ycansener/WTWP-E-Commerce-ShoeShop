USE [SHOESHOP]
GO
/****** Object:  StoredProcedure [dbo].[GetTOP5Product]    Script Date: 05/22/2012 00:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[GetTOP5Product]

as
SELECT TOP (5) SALEPRODUCT.StockID, 
PRODUCT.ProductID, 
PRODUCT.Gender, 
PRODUCER.ProducerName, 
PRODUCT.Description, 
INVENTORY.Size, 
INVENTORY.Color, 
INVENTORY.PricePerPiece, 
SUM(Amount) AS 'ToplamSatis'
FROM SALEPRODUCT, PRODUCT, PRODUCER, INVENTORY
WHERE PRODUCER.ProducerID = PRODUCT.ProducerID and  
SALEPRODUCT.StockID = INVENTORY.StockID and
INVENTORY.ProductID = PRODUCT.ProductID

GROUP BY SALEPRODUCT.StockID, 
PRODUCT.ProductID,
PRODUCT.Gender, 
PRODUCER.ProducerName, 
PRODUCT.Description, 
INVENTORY.Size, 
INVENTORY.Color, 
INVENTORY.PricePerPiece
ORDER BY 'ToplamSatis' DESC