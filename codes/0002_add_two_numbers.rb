# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  ans = []
  v1 = l1
  v2 = l2

  x = 0
  while(v1&.val || v2&.val || x == 1)
    sum = (v1&.val || 0) + (v2&.val || 0) + x
    ans << sum % 10
    x = sum / 10
    v1 = v1&.next
    v2 = v2&.next
  end
  ans
end
