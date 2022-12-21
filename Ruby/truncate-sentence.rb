# https://leetcode.com/problems/truncate-sentence/

# @param {String} s
# @param {Integer} k
# @return {String}
def truncate_sentence(s, k)
  s.split.first(k).join(" ")
end
