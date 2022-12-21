# https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/

# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  steps = 0

  until num.zero? do
    num.even? ? num /= 2 : num -= 1
    steps += 1
  end

  steps
end
