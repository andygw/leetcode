# https://leetcode.com/problems/count-integers-with-even-digit-sum/

# @param {Integer} num
# @return {Integer}
def count_even(num)
  numbers = (1..num).to_a
  count = numbers.count do |number|
      number.digits.sum.even?
  end

  count
end
