# https://leetcode.com/problems/number-of-good-pairs/

# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  good = 0
  next_nums = nums.drop(1)

  nums.each do |num|
    next_nums.each do |next_num|
      good += 1 if num == next_num
    end

    next_nums = next_nums.drop(1)
  end

  good
end
