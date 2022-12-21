# https://leetcode.com/problems/minimum-sum-of-four-digit-number-after-splitting-digits/

# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
    smallest = num.digits.min(2)
    biggest = num.digits.max(2)
    smallest[0] * 10 + biggest[0] +
      smallest[1] * 10 + biggest[1]
end
