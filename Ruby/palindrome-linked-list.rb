# https://leetcode.com/problems/palindrome-linked-list/

# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  arrayed = []

  until head.nil? do
    arrayed << head.val
    head = head.next
  end

  arrayed == arrayed.reverse
end
