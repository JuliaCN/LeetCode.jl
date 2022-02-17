# ---
# title: 83. Remove Duplicates from Sorted List
# id: problem83
# author: zhwang
# date: 2022-02-17
# difficulty: Easy
# categories: Linked List
# link: <https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/>
# hidden: true
# ---
# 
# Given a sorted linked list, delete all duplicates such that each element
# appear only _once_.
# 
# **Example 1:**
# 
#     
#     
#     Input: 1->1->2
#     Output: 1->2
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: 1->1->2->3->3
#     Output: 1->2->3
#     
# 
# 
## @lc code=start
using LeetCode

function delete_duplicates!(head::Union{ListNode,Nothing})::Union{ListNode,Nothing}
    cur = head
    while !isnothing(cur)
        node, value = next(cur), val(cur)
        while !isnothing(node) && val(node) == value
            cur.next = node = next(node)
        end
        cur = next(cur)
    end
    return head
end
## @lc code=end
