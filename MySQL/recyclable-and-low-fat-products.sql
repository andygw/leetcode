-- https://leetcode.com/problems/recyclable-and-low-fat-products/

# Write your MySQL query statement below
SELECT product_id FROM products
WHERE low_fats = 'Y'
AND recyclable = 'Y'
