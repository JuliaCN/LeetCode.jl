# @lc code=start
using LeetCode

# Double Pointers
function remove_nth_from_end_by_double_pointers!(
    head::ListNode, n::Int
)::Union{Nothing,ListNode}
    p1 = p2 = head
    for _ in 1:n
        p2 = next(p2)
    end
    # remove the first node
    isnothing(p2) && return next(head)
    p2 = p2.next ## let distance(p1, p2) = n + 1
    while !isnothing(p2)
        p1, p2 = next(p1), next(p2)
    end
    p1.next = p1.next.next ## remove one node
    return head
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

