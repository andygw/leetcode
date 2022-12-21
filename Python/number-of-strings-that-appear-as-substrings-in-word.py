# https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/

class Solution:
    def numOfStrings(self, patterns: List[str], word: str) -> int:
        count = 0
        for pattern in patterns:
            if word.find(pattern) >= 0: count += 1

        return count
