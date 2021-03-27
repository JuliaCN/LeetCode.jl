# @lc code=start
using LeetCode

function reverse_between(head::ListNode{Int}, m::Int, n::Int)::ListNode
    (isnothing(head) || m == n) && return head
    p = dummy = ListNode()
    next!(dummy, head)
    for _ = 1:m-1
        p = next(p)
    end

    tail = next(p)

    for _ = 1:n-m
        tmp = next(p)
        next!(p, next(tail))
        next!(tail, next(next(tail)))
        next!(next(p), tmp)
    end

    return next(dummy)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

