# https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  nums.map do |num|
    nums.count { |other_nums| num > other_nums }
  end
end
