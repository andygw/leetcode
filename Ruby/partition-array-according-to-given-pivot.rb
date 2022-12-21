# https://leetcode.com/problems/partition-array-according-to-given-pivot/

# @param {Integer[]} nums
# @param {Integer} pivot
# @return {Integer[]}
def pivot_array(nums, pivot)
  lesser = []
  pivots = []
  bigger = []

  nums.each do |num|
    lesser << num if num <  pivot
    pivots << num if num == pivot
    bigger << num if num >  pivot
  end

  lesser + pivots + bigger
end
