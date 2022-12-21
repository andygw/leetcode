-- https://leetcode.com/problems/find-total-time-spent-by-each-employee/

# Write your MySQL query statement below
SELECT
  event_day AS day,
  emp_id,
  SUM(out_time - in_time) AS total_time
FROM employees
GROUP BY emp_id, day
