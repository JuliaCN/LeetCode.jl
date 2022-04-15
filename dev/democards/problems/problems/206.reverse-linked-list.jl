# @lc code=start
using LeetCode

reverse_list(head::Nothing) = head
function reverse_list(head::ListNode)::ListNode
    new_head = pre_node = nothing
    while !isnothing(head)
        new_head = ListNode(head.val)
        pre_node, new_head.next = new_head, pre_node
        head = head.next
    end
    return new_head
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

