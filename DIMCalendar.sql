/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      --[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] As WeekNr
      ,[EnglishMonthName] As Month,
	  left(EnglishMonthName,3) As MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] As MonthNr
      ,[CalendarQuarter]As Quarter
      ,[CalendarYear] As Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear>=2019