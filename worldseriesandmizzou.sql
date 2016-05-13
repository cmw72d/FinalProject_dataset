SELECT * FROM tweet WHERE job_id = 2557 LIMIT 50;

SELECT * FROM tweet WHERE job_id = 4257 LIMIT 50;

SELECT COUNT(*) FROM tweet WHERE job_id = 2577;

SELECT COUNT(*) FROM tweet WHERE job_id = 4257;

SELECT MAX(created_at) FROM tweet WHERE job_id = 2577;

SELECT MAX(created_at) FROM tweet WHERE job_id = 4257;

SELECT MIN(created_at)	FROM tweet 	WHERE job_id = 2577;

SELECT MIN(created_at)	FROM tweet 	WHERE job_id = 4257;

SELECT MONTH(created_at) AS theMonth, WEEK(created_at) AS theWeek, DAY(created_at) AS theDay, YEAR(created_at) AS theYear, COUNT(*) AS counter
FROM tweet WHERE job_id = 2577 
GROUP BY theYear, theMonth, theWeek, theDay;
