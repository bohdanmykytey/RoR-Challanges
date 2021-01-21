#Merge two sorted linked lists and return it as a sorted list.
#The list should be made by splicing together the nodes of the
#first two lists.

# Example
# Input: l1 = [1,2,4], l2 = [1,3,4]
# Output: [1,1,2,3,4,4]

# Definition for singly-linked list
# class ListNode
#   attr_accessor :val, :next
#   def intitialize(val)
#       @val = val
#       @next = next
#   end
#end

# @return {ListNode} l1
# @return {ListNode} l2
# @return {ListNode}

def merge_two_lists(list1, list2)
  list3 = ListNode.new(0)
  buffer = list3

  while list1 && list2
    if list1.val <= list2.val
      13.next = list1
      list1 = list1.next
    else
      list3.next = list2
      list2 = list2.next
    end
    list3 = list3.next
  end
  list3.next = list1 || list2
  buffer.next
end
