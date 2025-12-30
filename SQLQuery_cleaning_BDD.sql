BEGIN TRANSACTION
BEGIN TRY
	--Drop table AdventureWorks2022_Stag.dbo.ErrorLog
	--Drop table AdventureWorks2022_Stag.dbo.DatabaseLog
	--Drop table AdventureWorks2022_Stag.dbo.AWBuildVersion
	--Drop table AdventureWorks2022_Stag.HumanResources.EmployeeDepartmentHistory
	--Drop table AdventureWorks2022_Stag.HumanResources.EmployeePayHistory
	--Drop table AdventureWorks2022_Stag.HumanResources.JobCandidate
	--Drop table AdventureWorks2022_Stag.HumanResources.Shift
	--Drop table Person.BusinessEntityAddress
	--Drop table Person.AddressType
	--Drop table Person.BusinessEntityContact
	--Drop table Person.ContactType
	--Drop table Person.EmailAddress
	--Drop table Person.Password
	--Drop table Person.PersonPhone
	--Drop table Person.PhoneNumberType
	--DROP VIEW IF EXISTS Production.vProductAndDescription;
	--drop table Production.ProductModelProductDescriptionCulture
	--drop table Production.ProductDocument
	--drop table Production.ProductModelIllustration
	--Drop table Production.Culture
	--Drop table Production.Document
	--Drop table Production.Illustration
	--Drop table Production.ProductCostHistory

	--Drop table Production.ProductDescription
	--Drop table Production.ProductListPriceHistory
	--Drop table Production.ProductProductPhoto
	--Drop table Production.ProductPhoto
	--Drop table Production.TransactionHistory
	--Drop table Production.TransactionHistoryArchive
	--Drop table Purchasing.ProductVendor
	--Drop table Sales.CountryRegionCurrency
	--Drop table Sales.PersonCreditCard
	--ALTER TABLE Sales.SalesOrderHeader
	--DROP CONSTRAINT FK_SalesOrderHeader_CreditCard_CreditCardID
	--Drop table Sales.CreditCard
	--ALTER TABLE Sales.SalesOrderHeader
	--DROP CONSTRAINT FK_SalesOrderHeader_CurrencyRate_CurrencyRateID
	--drop table Sales.CurrencyRate
	--drop table Sales.SalesOrderHeaderSalesReason
	--drop table Sales.SalesPersonQuotaHistory
	--drop table Sales.SalesReason
	--drop table Sales.SalesTaxRate
	--drop table Sales.SalesTerritoryHistory
	--drop table Sales.ShoppingCartItem
	--ALTER TABLE Sales.SalesOrderDetail
	--DROP CONSTRAINT FK_SalesOrderDetail_SpecialOfferProduct_SpecialOfferIDProductID
	--drop table Sales.SpecialOfferProduct
	--drop table Sales.SpecialOffer
	--drop table Sales.Currency
	--drop table HumanResources.Department
	COMMIT;
END TRY
BEGIN CATCH
    ROLLBACK;
    PRINT '✗ Erreur : ' + ERROR_MESSAGE();
    PRINT 'Transaction annulée automatiquement';
END CATCH;