# https://leetcode.com/problems/roman-to-integer/

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  # Hash matching each standard Roman numeral from 1 to 1000 with its number
  roman_hash = {
    M: 1000, CM: 900, D: 500, CD: 400,
    C:  100, XC:  90, L:  50, XL:  40,
    X:   10, IX:   9, V:   5, IV:   4, I: 1
  }

  number = 0
  chars = s.chars

  chars.each_with_index do |char, index|

    # Create a key variable composed of the current letter and the next letter.
    # This will be used to check for the compound Roman numerals, like IX, XC,
    # and so on.
    # When there's only one letter left, then just set the key as that letter.
    index < (chars.size - 1) ? key = char + chars[index + 1] : key = char

    # If the two-letter key variable is an actual Roman numeral, add its amount
    # to the number. Also delete the next number, which was the second letter in
    # the compound Roman numeral. That deletion won't be a problem when it's the
    # final letter.
    if roman_hash.key?(key.to_sym)
      number += roman_hash[key.to_sym]
      chars.delete_at(index + 1)
    else
      # If the two-letter key wasn't a Roman numeral, just get the single letter
      # and add its valeu to the number.
      number += roman_hash[char.to_sym]
    end
  end

  number
end
