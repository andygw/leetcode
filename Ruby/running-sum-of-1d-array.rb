# https://leetcode.com/problems/running-sum-of-1d-array/

# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
  num_to_add = 0
  num_array = []

  nums.each do |num|
    num_array << (num + num_to_add)
    num_to_add += num
  end

  num_array
end
