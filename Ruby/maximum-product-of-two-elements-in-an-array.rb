# https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/

# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  first = nums.max - 1
  nums.delete_at(nums.index(nums.max))
  second = nums.max - 1
  first * second
end

# Alternative solution
def max_product_alt(nums)
  nums.sort!
  (nums[-1] - 1) * (nums[-2] - 1)
end
