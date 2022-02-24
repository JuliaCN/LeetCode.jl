# ---
# title: 21. Merge Two Sorted Lists
# id: problem21
# author: zhwang
# date: 2022-01-20
# difficulty: Easy
# categories: Linked List
# link: <https://leetcode.com/problems/merge-two-sorted-lists/description/>
# hidden: true
# ---
# 
# Merge two sorted linked lists and return it as a new **sorted** list. The new
# list should be made by splicing together the nodes of the first two lists.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/03/merge_ex1.jpg)
# 
#     
#     
#     Input: l1 = [1,2,4], l2 = [1,3,4]
#     Output: [1,1,2,3,4,4]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: l1 = [], l2 = []
#     Output: []
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: l1 = [], l2 = [0]
#     Output: [0]
#     
# 
# 
# 
# **Constraints:**
# 
#   * The number of nodes in both lists is in the range `[0, 50]`.
#   * `-100 <= Node.val <= 100`
#   * Both `l1` and `l2` are sorted in **non-decreasing** order.
# 
# 
## @lc code=start
using LeetCode

function merge_two_lists(
    list1::Union{ListNode,Nothing}, list2::Union{ListNode,Nothing}
)::Union{ListNode,Nothing}
    isnothing(list1) && isnothing(list2) && return nothing
    node = fake_head = ListNode()
    while !isnothing(list1) && !isnothing(list2)
        node.next = ListNode()
        node = next(node)
        if val(list1) < val(list2)
            node.val = list1.val
            list1 = next(list1)
        else
            node.val = list2.val
            list2 = next(list2)
        end
    end
    l = isnothing(list2) ? list1 : list2
    while !isnothing(l)
        node.next = ListNode()
        node = next(node)
        node.val = l.val
        l = next(l)
    end
    return next(fake_head)
end

## @lc code=end
