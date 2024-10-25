SELECT Visits.customer_id, COUNT(Visits.visit_id) AS count_no_trans
FROM Visits 
LEFT JOIN Transactions t on Visits.visit_id = t.visit_id
WHERE t.amount IS NULL
GROUP BY Visits.customer_id;
