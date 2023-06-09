SELECT ID, DATEDIFF(MONTH, START_DATE, FINISH_DATE) AS MONTH_COUNT FROM PROJECT
GROUP BY ID HAVING MONTH_COUNT IN(
SELECT MAX(DATEDIFF(MONTH, START_DATE, FINISH_DATE)) FROM PROJECT)