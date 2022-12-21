# https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/

# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
  product = 1
  n.digits.each { |num| product *= num }
  sum = n.digits.sum
  product - sum
end
