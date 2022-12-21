# https://leetcode.com/problems/fizz-buzz/

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  new_array = (1..n).map do |digit|
    if digit % 15 == 0
      "FizzBuzz"
    elsif digit % 5 == 0
      "Buzz"
    elsif digit % 3 == 0
      "Fizz"
    else
      "#{digit}"
    end
  end

  new_array
end
