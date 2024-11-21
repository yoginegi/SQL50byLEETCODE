SELECT e.employee_id, e.name, COUNT(emp.reports_to) AS reports_count, ROUND(AVG(emp.age)) AS average_age
FROM Employees e
INNER JOIN Employees emp ON e.employee_id=emp.reports_to
GROUP BY e.name, e.employee_id
ORDER BY employee_id;
