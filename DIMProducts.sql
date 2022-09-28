/****** Script for SelectTopNRows command from SSMS  ******/
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductItemCode
    --  ,[ProductSubcategoryKey]
     -- ,[WeightUnitMeasureCode]
    --  ,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as [Product Name]
	  ,ps.EnglishProductSubCategoryName AS [Sub Category]--Joined In from Sub Category Table
	  ,pc.EnglishProductCategoryName AS [Product Category]--Joined In from Category Table
      --,[SpanishProductName]
      --,[FrenchProductName]
     -- ,[StandardCost]
     -- ,[FinishedGoodsFlag]
      ,p.[Color] as [Product Color]
     -- ,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] as [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] as [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] as [Product Model Name]
     -- ,[LargePhoto]
      ,p.[EnglishDescription] as [English Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
    --  ,[HebrewDescription]
    --  ,[ThaiDescription]
     -- ,[GermanDescription]
     -- ,[JapaneseDescription]
     -- ,[TurkishDescription]
     -- ,[StartDate]
    --  ,[EndDate]
      --,[Status]
	  ,ISNULL (p.Status, 'Outdated') AS [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  left join dbo.DimProductSubCategory AS ps ON ps.ProductSubCategoryKey=p.ProductSubCategoryKey
  left join dbo.DimProductCategory AS pc ON ps.ProductCategoryKey=pc.ProductCategoryKey
  order by p.ProductKey asc