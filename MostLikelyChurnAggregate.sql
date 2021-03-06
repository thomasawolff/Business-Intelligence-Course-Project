﻿/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [gender] as Gender
,count(CASE WHEN age>= 30 AND age < 40 THEN 1 END) AS [Ages: 30 - 39]  
,count(CASE WHEN age>= 40 AND age < 50 THEN 1 END) AS [Ages: 40 - 49]
,count(CASE WHEN age>= 50 AND age < 60 THEN 1 END) AS [Ages: 50 - 59]
,count(CASE WHEN age>= 60 AND age < 75 THEN 1 END) AS [Ages: 60 - 75]
  FROM [Course Project BI].[dbo].[Most Likely Leave 100] 
  where [gender] like 'Female'
  group by gender

union
select top 1 [gender],
       round((select avg(balance) as avgBal_30_40 from [Most Likely Leave 100]
					where age>= 30 AND age < 40 
					and gender like 'Female'),2) [Age 30 - 39],
	   round((select avg(balance) as avgBal_40_50 from [Most Likely Leave 100]
			        where age>= 40 AND age < 50 
					and gender like 'Female'),2) [Age 40 - 49],
	   round((select avg(balance) as avgBal_50_60 from [Most Likely Leave 100]
			        where age>= 50 AND age < 60 
					and gender like 'Female'),2) [Age 50 - 59],
	   round((select avg(balance) as avgBal_60_75 from [Most Likely Leave 100]
			        where age>= 60 AND age < 75 
					and gender like 'Female'),2) [Age 60 - 75]
FROM [Course Project BI].[dbo].[Most Likely Leave 100] t
where gender like 'Female'

union
select top 1 [gender],
       round((select avg([credit score]) as avgCred_30_40 from [Most Likely Leave 100]
					where age>= 30 AND age < 40 
					and gender like 'Female'),0) [Age 30 - 39],
	   round((select avg([credit score]) as avgCred_40_50 from [Most Likely Leave 100]
			        where age>= 40 AND age < 50 
					and gender like 'Female'),0) [Age 40 - 49],
	   round((select avg([credit score]) as avgCred_50_60 from [Most Likely Leave 100]
			        where age>= 50 AND age < 60 
					and gender like 'Female'),0) [Age 50 - 59],
	   round((select avg([credit score]) as avgCred_60_75 from [Most Likely Leave 100]
			        where age>= 60 AND age < 75 
					and gender like 'Female'),0) [Age 60 - 75]
FROM [Course Project BI].[dbo].[Most Likely Leave 100] t
where gender like 'Female'

union
SELECT [gender] as Gender
,count(CASE WHEN age>= 30 AND age < 40 THEN 1 END) AS [Ages: 30 - 39]  
,count(CASE WHEN age>= 40 AND age < 50 THEN 1 END) AS [Ages: 40 - 49]
,count(CASE WHEN age>= 50 AND age < 60 THEN 1 END) AS [Ages: 50 - 59]
,count(CASE WHEN age>= 60 AND age < 75 THEN 1 END) AS [Ages: 60 - 75]
  FROM [Course Project BI].[dbo].[Most Likely Leave 100] 
  where [gender] like 'Male'
  group by gender

union
select top 1 [gender],
       round((select avg(balance) as avgBal_30_40 from [Most Likely Leave 100]
					where age>= 30 AND age < 40 
					and gender like 'Male'),2) [Age 30 - 39],
	   round((select avg(balance) as avgBal_40_50 from [Most Likely Leave 100]
			        where age>= 40 AND age < 50
					and gender like 'Male'),2) [Age 40 - 49],
	   round((select avg(balance) as avgBal_50_60 from [Most Likely Leave 100]
			        where age>= 50 AND age < 60
					and gender like 'Male'),2) [Age 50 - 59],
	   round((select avg(balance) as avgBal_60_75 from [Most Likely Leave 100]
			        where age>= 60 AND age < 75
					and gender like 'Male'),2) [Age 60 - 75]
FROM [Course Project BI].[dbo].[Most Likely Leave 100] t
where gender like 'Male'

union
select top 1 [gender],
       round((select avg([credit score]) as avgCred_30_40 from [Most Likely Leave 100]
					where age>= 30 AND age < 40 
					and gender like 'Male'),0) [Age 30 - 39],
	   round((select avg([credit score]) as avgCred_40_50 from [Most Likely Leave 100]
			        where age>= 40 AND age < 50 
					and gender like 'Male'),0) [Age 40 - 49],
	   round((select avg([credit score]) as avgCred_50_60 from [Most Likely Leave 100]
			        where age>= 50 AND age < 60 
					and gender like 'Male'),0) [Age 50 - 59],
	   round((select avg([credit score]) as avgCred_60_75 from [Most Likely Leave 100]
			        where age>= 60 AND age < 75 
					and gender like 'Male'),0) [Age 60 - 75]
FROM [Course Project BI].[dbo].[Most Likely Leave 100] t
where gender like 'Male'
