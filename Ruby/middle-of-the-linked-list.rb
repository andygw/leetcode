# https://leetcode.com/problems/middle-of-the-linked-list/

# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  arrayed = []
  size = 0

  until head == nil do
    arrayed << head.val
    head = head.next
    size += 1
  end

  size.even? ? arrayed.last(size / 2) : arrayed.last(size / 2 + 1)
end
