# ---
# title: 61. Rotate List
# id: problem61
# author: Qling
# date: 2021-03-27
# difficulty: Medium
# categories: Linked List, Two Pointers
# link: <https://leetcode.com/problems/rotate-list/description/>
# hidden: true
# ---
# 
# Given the `head` of a linked list, rotate the list to the right by `k` places.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/13/rotate1.jpg)
# 
#     
#     
#     Input: head = [1,2,3,4,5], k = 2
#     Output: [4,5,1,2,3]
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/13/roate2.jpg)
# 
#     
#     
#     Input: head = [0,1,2], k = 4
#     Output: [2,0,1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in the list is in the range `[0, 500]`.
#   * `-100 <= Node.val <= 100`
#   * `0 <= k <= 2 * 109`
# 
# 
## @lc code=start
using LeetCode

function rotate_right(head::ListNode, k::Int)::ListNode
    isnothing(head) && return head

    last_element, length = head, 1
    while !isnothing(next(last_element))
        last_element = next(last_element)
        length += 1
    end

    k = k % length
    next!(last_element, head)

    temp_element = head
    for _ = 0:(length-k-2)
        temp_element = next(temp_element)
    end

    answer = next(temp_element)
    next!(temp_element, nothing)

    return answer
end
## @lc code=end
