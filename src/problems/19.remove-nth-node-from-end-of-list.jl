# ---
# title: 19. Remove Nth Node From End of List
# id: problem19
# author: zhwang
# date: 2022-01-23
# difficulty: Medium
# categories: Linked List, Two Pointers
# link: <https://leetcode.com/problems/remove-nth-node-from-end-of-list/description/>
# hidden: true
# ---
# 
# Given the `head` of a linked list, remove the `nth` node from the end of the
# list and return its head.
# 
# **Follow up:**  Could you do this in one pass?
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/03/remove_ex1.jpg)
# 
#     
#     
#     Input: head = [1,2,3,4,5], n = 2
#     Output: [1,2,3,5]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: head = [1], n = 1
#     Output: []
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: head = [1,2], n = 1
#     Output: [1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the list is `sz`.
#   * `1 <= sz <= 30`
#   * `0 <= Node.val <= 100`
#   * `1 <= n <= sz`
# 
# 
## @lc code=start
using LeetCode

## Double Pointers
function remove_nth_from_end_by_double_pointers!(
    head::ListNode, n::Int
)::Union{Nothing,ListNode}
    p1 = p2 = head
    for _ in 1:n
        p2 = next(p2)
    end
    ## remove the first node
    isnothing(p2) && return next(head)
    p2 = p2.next ## let distance(p1, p2) = n + 1
    while !isnothing(p2)
        p1, p2 = next(p1), next(p2)
    end
    p1.next = p1.next.next ## remove one node
    return head
end
## @lc code=end
