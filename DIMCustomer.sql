/****** Script for SelectTopNRows command from SSMS  ******/
--Cleaned DIM_Customers Table
SELECT 
  c.customerkey AS Customers 
  -- ,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.firstname AS [First Name] 
  --,[MiddleName]
  , 
  c.lastname AS [LastName], 
  c.firstname + ' ' + lastname AS [Full Name] --Concat first and last name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  CASE c.gender WHEN 'M' Then 'Male' WHEN 'F' THEN 'Female' END as Gender --Logic statement for replace Letter with full gender name
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  -- ,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --  ,[AddressLine1]
  -- ,[AddressLine2]
  --,[Phone]
  , 
  c.datefirstpurchase AS DateFirstPurchase 
  --,[CommuteDistance]
  , 
  g.city AS [Customer City] --Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC; --Ordered list by CustomerKey