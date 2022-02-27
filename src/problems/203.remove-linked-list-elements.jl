# ---
# title: 203. Remove Linked List Elements
# id: problem203
# author: zhwang
# date: 2022-02-16
# difficulty: Easy
# categories: Linked List
# link: <https://leetcode.com/problems/remove-linked-list-elements/description/>
# hidden: true
# ---
# 
# Remove all elements from a linked list of integers that have value **_val_**.
# 
# **Example:**
# 
#     
#     
#     Input:  1->2->6->3->4->5->6, _**val**_ = 6
#     Output: 1->2->3->4->5
#     
# 
# 
## @lc code=start
using LeetCode

function remove_elements!(
    head::Union{ListNode,Nothing}, value::Int
)::Union{ListNode,Nothing}
    cur = fake_head = ListNode()
    fake_head.next = head
    while !isnothing(cur.next)
        if cur.next.val == value
            cur.next = cur.next.next
        else
            cur = cur.next
        end
    end
    return fake_head.next
end
## @lc code=end
