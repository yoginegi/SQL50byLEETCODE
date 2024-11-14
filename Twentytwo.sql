SELECT ROUND((COUNT(DISTINCT player_id)* 1/(SELECT COUNT(DISTINCT player_id) FROM Activity)),2) AS fraction
FROM Activity
WHERE (player_id, SUBDATE(event_date, INTERVAL 1 DAY))
IN (SELECT player_id, MIN(event_date) AS Firstlogin
FROM Activity
GROUP BY player_id);
