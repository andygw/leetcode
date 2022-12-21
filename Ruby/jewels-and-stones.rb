# https://leetcode.com/problems/jewels-and-stones/

# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
  stone_array = stones.chars
  count = 0

  jewels.chars.each do |jewel|
    count += stone_array.count { |stone| stone == jewel }

    # Remove elements from this array on each iteration to speed up subsequent
    # iterations. Useful when stones is long or has many repeated elements.
    stone_array.delete(jewel)
  end

  count
end
