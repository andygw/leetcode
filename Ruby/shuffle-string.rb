# https://leetcode.com/problems/shuffle-string/

# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)
  arrayed = indices.map { |i| [indices[i], s.chars[i]] }
  sorted_array = arrayed.sort_by!{ |x| x[0] }
  sorted_array.map { |x| x[1] }.join
end
