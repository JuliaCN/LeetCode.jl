# @lc code=start
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
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

