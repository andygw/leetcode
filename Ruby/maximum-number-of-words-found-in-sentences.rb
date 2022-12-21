# https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/

# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
  biggest = sentences.max { |a, b| a.split.size <=> b.split.size }
  biggest.split.size
end
