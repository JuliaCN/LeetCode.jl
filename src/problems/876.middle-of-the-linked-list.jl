# ---
# title: 876. Middle of the Linked List
# id: problem876
# author: zhwang
# date: 2022-01-23
# difficulty: Easy
# categories: Linked List
# link: <https://leetcode.com/problems/middle-of-the-linked-list/description/>
# hidden: true
# ---
# 
# Given a non-empty, singly linked list with head node `head`, return a middle
# node of linked list.
# 
# If there are two middle nodes, return the second middle node.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,2,3,4,5]
#     Output: Node 3 from this list (Serialization: [3,4,5])
#     The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
#     Note that we returned a ListNode object ans, such that:
#     ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [1,2,3,4,5,6]
#     Output: Node 4 from this list (Serialization: [4,5,6])
#     Since the list has two middle nodes with values 3 and 4, we return the second one.
#     
# 
# 
# 
# **Note:**
# 
#   * The number of nodes in the given list will be between `1` and `100`.
# 
# 
## @lc code=start
using LeetCode

## double pointers
function middle_node_by_double_pointers(head::ListNode)::ListNode
    p1 = p2 = head
    while !isnothing(p2)
        p2 = next(p2)
        isnothing(p2) && return p1
        p2, p1 = p2.next, p1.next
    end
    return p1
end

## @lc code=end
