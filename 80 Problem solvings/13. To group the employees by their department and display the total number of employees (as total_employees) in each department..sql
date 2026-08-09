SELECT 
	department,
	COUNT(*) AS Total_Employees
FROM EmployeesPractice
GROUP BY department