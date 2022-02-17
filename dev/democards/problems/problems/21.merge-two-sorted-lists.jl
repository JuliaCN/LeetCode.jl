# @lc code=start
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

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

