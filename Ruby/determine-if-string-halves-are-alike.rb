# https://leetcode.com/problems/determine-if-string-halves-are-alike/

# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
  half_length = s.size/2
  a = s[0, half_length]
  b = s[half_length, half_length]
  a.count('aeiouAEIOU') == b.count('aeiouAEIOU')
end
