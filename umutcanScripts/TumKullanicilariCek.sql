USE [SHOESHOP]
GO
/****** Object:  StoredProcedure [dbo].[TumKullanicilariCek]    Script Date: 05/22/2012 05:32:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[TumKullanicilariCek]
AS
SELECT PERSON.Pno, PERSON.Email, PERSON.Name, PERSON.Surname FROM CUSTOMER,PERSON where CUSTOMER.Pno = PERSON.Pno