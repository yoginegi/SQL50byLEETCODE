SELECT W1.id
FROM Weather W1
INNER JOIN Weather W2 ON W1.recordDate = DATE_ADD(W2.recordDate, INTERVAL 1 DAY)
WHERE W1.temperature> W2.temperature
