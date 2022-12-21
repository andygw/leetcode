# https://leetcode.com/problems/shuffle-the-array/

# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  first_nums = nums[0, n]
  last_nums  = nums[n, 2 * n-1]
  new_array = []

  n.times do |x|
    new_array << first_nums[x]
    new_array << last_nums[x]
  end

  new_array
end
