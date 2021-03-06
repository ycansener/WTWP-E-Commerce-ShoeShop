USE [SHOESHOP]
GO
/****** Object:  StoredProcedure [dbo].[SearchProduct]    Script Date: 05/22/2012 03:43:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetSingleProduct]
(
	@stockID int
)
as
SELECT  
INVENTORY.StockID,
PRODUCT.ProductID, 
PRODUCT.Gender, 
PRODUCER.ProducerName, 
PRODUCT.Description, 
INVENTORY.Size, 
INVENTORY.Color, 
INVENTORY.PricePerPiece

FROM  PRODUCT, PRODUCER, INVENTORY
WHERE PRODUCER.ProducerID = PRODUCT.ProducerID and
INVENTORY.ProductID = PRODUCT.ProductID and 
INVENTORY.StockID = @stockID


