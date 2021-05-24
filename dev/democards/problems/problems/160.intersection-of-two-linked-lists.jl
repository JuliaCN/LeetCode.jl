# @lc code=start
using LeetCode

function get_intersection_node(head_a::ListNode, head_b::ListNode)::Union{ListNode,Nothing}
    isnothing(head_a) || isnothing(head_b) && return nothing
    pa, pb = head_a, head_b

    while pa != pb
        pa = isnothing(pa) ? head_b : pa.next
        pb = isnothing(pb) ? head_a : pb.next
    end

    return pa
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

