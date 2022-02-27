# ---
# title: 206. Reverse Linked List
# id: problem206
# author: zhwang
# date: 2022-02-17
# difficulty: Easy
# categories: Linked List
# link: <https://leetcode.com/problems/reverse-linked-list/description/>
# hidden: true
# ---
# 
# Reverse a singly linked list.
# 
# **Example:**
# 
#     
#     
#     Input: 1->2->3->4->5->NULL
#     Output: 5->4->3->2->1->NULL
#     
# 
# **Follow up:**
# 
# A linked list can be reversed either iteratively or recursively. Could you
# implement both?
# 
# 
## @lc code=start
using LeetCode

function reverse_list(head::Union{ListNode,Nothing})::Union{ListNode,Nothing}
    new_head = pre_node = nothing
    while !isnothing(head)
        new_head = ListNode(head.val)
        pre_node, new_head.next = new_head, pre_node
        head = head.next
    end
    return new_head
end
## @lc code=end
