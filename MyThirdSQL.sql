<<<<<<< HEAD
SELECT *
FROM startups;

SELECT COUNT(*)
FROM startups;

SELECT SUM(valuation)
FROM startups;

SELECT MAX(raised)
FROM startups;

SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

SELECT MIN(founded)
FROM startups;

SELECT AVG(valuation)
FROM startups;

SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY 2 DESC;


SELECT category, COUNT(*)
FROM startups
GROUP BY 1;

SELECT category, COUNT(*)
FROM startups
GROUP BY 1
HAVING COUNT(*) > 3;

SELECT location, AVG(employees)
FROM startups
GROUP BY 1;

SELECT location, AVG(employees)
FROM startups
GROUP BY 1
HAVING AVG(employees) > 500;
=======
SELECT *
FROM startups;

SELECT COUNT(*)
FROM startups;

SELECT SUM(valuation)
FROM startups;

SELECT MAX(raised)
FROM startups;

SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

SELECT MIN(founded)
FROM startups;

SELECT AVG(valuation)
FROM startups;

SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category;

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY 2 DESC;


SELECT category, COUNT(*)
FROM startups
GROUP BY 1;

SELECT category, COUNT(*)
FROM startups
GROUP BY 1
HAVING COUNT(*) > 3;

SELECT location, AVG(employees)
FROM startups
GROUP BY 1;

SELECT location, AVG(employees)
FROM startups
GROUP BY 1
HAVING AVG(employees) > 500;
>>>>>>> 9ca451fb1566c9653bf400f9d5397bf5e79cd3cc
