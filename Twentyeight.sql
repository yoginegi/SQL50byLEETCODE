SELECT COALESCE(
(SELECT MAX(num) AS num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1
ORDER BY num DESC
LIMIT 1),
NULL) AS num;

#Other_method
SELECT MAX(num) as num
FROM MyNumbers
WHERE (num) IN 
(SELECT num FROM MyNumbers GROUP BY num HAVING COUNT(num) = 1)
