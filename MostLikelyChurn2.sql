/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [customer ID]
      ,[cluster]
      ,[prediction]
      ,round([confidence(1)],6) as [confidence(1)]
      ,round([confidence(0)],6) as [confidence(0)]
      ,[credit score]
      ,[age]
      ,[balance]
      ,[num products]
      ,[is active]
      ,[geography]
      ,[gender]
  FROM [Course Project BI].[dbo].[Most Likely to Exit] 
  where [gender] like 'Female' 
  and [Geography] like 'Germany' 
  and ([num products] = 1 
  and [age] > 45 and [age] < 60)
  order by [confidence(1)] desc
