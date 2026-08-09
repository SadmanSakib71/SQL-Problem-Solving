--sub query
SELECT 
	AVG(salary) AS Avg_salary,
	company_name
FROM Works
GROUP BY company_name


--- Main query

SELECT  
	MAX(A.Avg_salary) As Max_Avg
FROM (
SELECT 
	AVG(salary) AS Avg_salary,
	company_name
FROM Works
GROUP BY company_name
) AS A