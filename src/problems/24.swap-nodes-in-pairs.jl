# ---
# title: 24. Swap Nodes in Pairs
# id: problem24
# author: Qling
# date: 2021-05-17
# difficulty: Medium
# categories: Linked List
# link: <https://leetcode.com/problems/swap-nodes-in-pairs/description/>
# hidden: true
# ---
# 
# Given a linked list, swap every two adjacent nodes and return its head.
# 
# You may **not** modify the values in the list's nodes. Only nodes itself may
# be changed.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/03/swap_ex1.jpg)
# 
#     
#     
#     Input: head = [1,2,3,4]
#     Output: [2,1,4,3]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: head = []
#     Output: []
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: head = [1]
#     Output: [1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the list is in the range `[0, 100]`.
#   * `0 <= Node.val <= 100`
# 
# 
## @lc code=start
using LeetCode

function swap_pairs(head::ListNode)::ListNode
    pre = dummpy = ListNode()
    pre.next = head

    while !isnothing(next(pre)) && !isnothing(next(next(pre)))
        a = pre.next
        b = a.next

        ## `pre->a->b->b.next` => `pre->b->a->b.next`
        pre.next, b.next, a.next = b, a, b.next

        pre = a
    end

    return dummpy.next
end

## @lc code=end
