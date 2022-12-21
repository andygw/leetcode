# https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/

# @param {String[]} patterns
# @param {String} word
# @return {Integer}
def num_of_strings(patterns, word)
  count = 0
  patterns.each do |pattern|
    count += 1 if word.include?(pattern)
  end
  count
end
