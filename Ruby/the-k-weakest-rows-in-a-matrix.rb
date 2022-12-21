# https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/

# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  sums = mat.map { |arr| arr.sum }

  indexed = sums.map.with_index do |num, i|
    [num, i]
  end

  sorted = indexed.sort_by do |num|
    num[0]
  end

  final = sorted.map do |arr|
    arr[1]
  end

  final[0, k]
end
