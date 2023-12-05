 SELECT title, score
 FROM hacker_news
 ORDER BY score DESC
 LIMIT 5;

 SELECT SUM(score)
 FROM hacker_news;

SELECT user, SUM(score)
FROM hacker_news
GROUP BY 1
HAVING SUM(score) > 200
ORDER BY 2 DESC;

SELECT (517+309+304+282) / 6366.0; --it is important to include the .0 at the end otherwise the result would yield an integer number and not a number with a decimal

SELECT user, url, count(url)
FROM hacker_news
WHERE url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
GROUP BY 1
ORDER BY 3 DESC;

SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   ELSE 'Other'
  END AS 'Source', --remember that Case adds a new column, and SELECT allows you to select columns. everything up until here is our first column, and below is our second column
  COUNT(url)
FROM hacker_news
GROUP BY 1;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp,
   strftime('%H', timestamp) --this function allows us to return a formatted date
   --it takes two arguments (format, column)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT
  strftime('%H', timestamp) AS 'hour',
  ROUND(AVG(score)) AS 'avg_score',
  COUNT(*) AS 'num_stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;

