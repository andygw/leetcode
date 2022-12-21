# https://leetcode.com/problems/final-value-of-variable-after-performing-operations/

class Solution:
    def finalValueAfterOperations(self, operations: List[str]) -> int:
        count = 0
        for operation in operations:
            if operation[1] == '-':
                count -= 1
            elif operation[1] == '+':
                count += 1

        return count
