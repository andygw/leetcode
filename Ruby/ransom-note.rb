# https://leetcode.com/problems/ransom-note/

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  letters = ransom_note.chars
  letters.all? { |letter| letters.count(letter) <= magazine.count(letter) }
end


# Alternative solutuon
def can_construct_alt(ransom_note, magazine)
  available_letters = magazine.chars

  ransom_note.chars.each do |char|
    return false unless available_letters.include?(char)
    available_letters.delete_at(available_letters.index(char))
  end

  available_letters.size >= 0
end
