# ---
# title: 141. Linked List Cycle
# id: problem141
# author: zhwang
# date: 2022-02-15
# difficulty: Easy
# categories: Linked List, Two Pointers
# link: <https://leetcode.com/problems/linked-list-cycle/description/>
# hidden: true
# ---
# 
# Given `head`, the head of a linked list, determine if the linked list has a
# cycle in it.
# 
# There is a cycle in a linked list if there is some node in the list that can
# be reached again by continuously following the `next` pointer. Internally,
# `pos` is used to denote the index of the node that tail's `next` pointer is
# connected to.  **Note that  `pos` is not passed as a parameter**.
# 
# Return `true` _if there is a cycle in the linked list_. Otherwise, return
# `false`.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2018/12/07/circularlinkedlist.png)
# 
#     
#     
#     Input: head = [3,2,0,-4], pos = 1
#     Output: true
#     Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2018/12/07/circularlinkedlist_test2.png)
# 
#     
#     
#     Input: head = [1,2], pos = 0
#     Output: true
#     Explanation: There is a cycle in the linked list, where the tail connects to the 0th node.
#     
# 
# **Example 3:**
# 
# ![](https://assets.leetcode.com/uploads/2018/12/07/circularlinkedlist_test3.png)
# 
#     
#     
#     Input: head = [1], pos = -1
#     Output: false
#     Explanation: There is no cycle in the linked list.
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of the nodes in the list is in the range `[0, 104]`.
#   * `-105 <= Node.val <= 105`
#   * `pos` is `-1` or a **valid index** in the linked-list.
# 
# 
# 
# **Follow up:** Can you solve it using `O(1)` (i.e. constant) memory?
# 
# 
## @lc code=start
using LeetCode
function has_cycle(head::Union{ListNode,Nothing})::Bool
    isnothing(head) && return false
    swift = slow = head
    while !isnothing(swift.next) && !isnothing(swift.next.next)
        slow, swift = slow.next, swift.next.next
        slow === swift && return true
    end
    return false
end
## @lc code=end
