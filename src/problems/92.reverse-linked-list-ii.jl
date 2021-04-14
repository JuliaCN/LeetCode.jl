# ---
# title: 92. Reverse Linked List II
# id: problem92
# author: Qling
# date: 2021-03-18
# difficulty: Medium
# categories: Linked List
# link: <https://leetcode.com/problems/reverse-linked-list-ii/description/>
# hidden: true
# ---
# 
# Reverse a linked list from position _m_ to _n_. Do it in one-pass.
# 
# **Note:  **1 ≤ _m_ ≤ _n_ ≤ length of list.
# 
# **Example:**
# 
#     
#     
#     Input: 1->2->3->4->5->NULL, _m_ = 2, _n_ = 4
#     Output: 1->4->3->2->5->NULL
#     
# 
# 
## @lc code=start
using LeetCode

function reverse_between(head::ListNode{Int}, m::Int, n::Int)::ListNode
    (isnothing(head) || m == n) && return head
    p = dummy = ListNode()
    next!(dummy, head)
    for _ = 1:m-1
        p = next(p)
    end

    tail = next(p)

    for _ = 1:n-m
        tmp = next(p)
        next!(p, next(tail))
        next!(tail, next(next(tail)))
        next!(next(p), tmp)
    end

    return next(dummy)
end
## @lc code=end
