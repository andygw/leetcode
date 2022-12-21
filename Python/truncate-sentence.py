# https://leetcode.com/problems/truncate-sentence/

class Solution:
    def truncateSentence(self, s: str, k: int) -> str:
        array = s.split()[0:k]
        string_again = " ".join([str(word) for word in array])
        return string_again
