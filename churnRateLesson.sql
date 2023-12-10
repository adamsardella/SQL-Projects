-- Your original query:
WITH enrollments AS (
  SELECT *
  FROM subscriptions
  WHEN subcription_start < '2017-01-01'  -- Spelling mistake in 'subscription_start'
  AND (
    subscription_end >= '2017-01-01'
    OR (
      subscription_end IS NULL
    )
  )
),

status AS (SELECT
  CASE
    WHEN (subscription_end > '2017-01-31')
    OR (
      subscription_end iS NULL  -- Spelling mistake in 'IS NULL'
    ) THEN 0
    ELSE 1
  END AS is_canceled
  FROM enrollments
)

status AS (SELECT 
  CASE 
    WHEN subcription_start < '2017-01-01'  -- Spelling mistake in 'subscription_start'
  AND (
    subscription_end >= '2017-01-01'
    OR (
      subscription_end IS NULL)) THEN 1)  -- Syntax error: missing END for the CASE statement
  ELSE 0
END as is_active
FROM enrollments
)

SELECT 1.0 * SUM(is_canceled) / SUM(is_active)
FROM status;

-- Revised query with notes:
WITH enrollments AS (
  SELECT *
  FROM subscriptions
  WHERE subscription_start < '2017-01-01'  -- Corrected spelling mistake in 'subscription_start'
    AND ((subscription_end >= '2017-01-01') OR (subscription_end IS NULL))
),
status AS (
  SELECT
    CASE
      WHEN (subscription_end > '2017-01-31') OR (subscription_end IS NULL) THEN 0
      ELSE 1
    END AS is_canceled,
    CASE
      WHEN subscription_start < '2017-01-01'
        AND ((subscription_end >= '2017-01-01') OR (subscription_end IS NULL)) THEN 1
      ELSE 0
    END AS is_active  -- Corrected syntax, properly defined is_active column
  FROM enrollments
)

SELECT 1.0 * SUM(is_canceled) / SUM(is_active) AS churn_rate_jan_2017
FROM status;





----another example:

WITH months AS (
  SELECT '2017-01-01' as first_day, '2017-01-31' as last_day
  UNION
  SELECT '2017-02-01' as first_day, '2017-02-28' as last_day
  UNION
  SELECT '2017-03-01' as first_day, '2017-03-31' as last_day
),
cross_join AS (
  SELECT *
  FROM subscriptions
  CROSS JOIN months
),
status AS (
  SELECT 
    cross_join.id,
    cross_join.first_day AS month,  -- Changed single quotes to no quotes for column alias
    CASE 
      WHEN (subscription_start < first_day AND (subscription_end > first_day OR subscription_end IS NULL)) THEN 1  -- Removed comma after first_day
      ELSE 0
    END AS is_active
  FROM cross_join
)
SELECT *
FROM status
LIMIT 100;
