"""
# [2] Add Two Numbers

https://leetcode.com/problems/add-two-numbers/description/

- algorithms
- Medium (32.52%)
- Likes:    8986
- Dislikes: 2266
- Total Accepted:    1.5M
- Total Submissions: 4.4M
- Testcase Example:  '[2,4,3]\n[5,6,4]'

You are given two non-empty linked lists representing two non-negative
integers. The digits are stored in reverse order and each of their nodes
contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the
number 0 itself.

Example:


Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.
"""
function add_two_numbers(l1::ListNode, l2::ListNode)::ListNode
    carry = 0
    fake_head = cur = ListNode()

    while !isnothing(l1) || !isnothing(l2) || !iszero(carry)
        v1, v2 = 0, 0

        if !isnothing(l1)
            v1 = val(l1)
            l1 = next(l1)
        end

        if !isnothing(l2)
            v2 = val(l2)
            l2 = next(l2)
        end

        carry, v = divrem(v1+v2+carry, 10)
        next!(cur, ListNode(v))
        cur = next(cur)
    end
    next(fake_head)
end