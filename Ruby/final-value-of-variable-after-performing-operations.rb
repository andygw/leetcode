# https://leetcode.com/problems/final-value-of-variable-after-performing-operations/

# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
  neg = operations.count { |str| str.include?('--')}
  pos = operations.count { |str| str.include?('++')}
  pos - neg
end
