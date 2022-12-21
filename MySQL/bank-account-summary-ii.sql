-- https://leetcode.com/problems/bank-account-summary-ii/

# Write your MySQL query statement below
SELECT
  users.name AS name,
  transactions.amount AS balance
FROM users
INNER JOIN transactions ON users.account = transactions.account

WHERE SUM(transactions.amount) > 10000
GROUP BY transactions.amount;
