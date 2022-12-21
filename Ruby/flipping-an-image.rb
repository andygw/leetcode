# https://leetcode.com/problems/flipping-an-image/

# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
  image.map do |row|
    row.reverse.map { |bit| bit == 0 ? 1 : 0 }
  end
end
