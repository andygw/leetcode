# https://leetcode.com/problems/build-array-from-permutation/

# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
  nums.map { |num| nums[num] }
end
