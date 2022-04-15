# @lc code=start
using LeetCode

function next_larger_nodes(head::ListNode{Int})
    head = reverse_list(head)
    stk = Int[]
    res = Int[]
    while !isnothing(head)
        while !isempty(stk) && stk[end] <= val(head)
            pop!(stk)
        end
        pushfirst!(res, isempty(stk) ? 0 : stk[end])
        push!(stk, val(head))
        head = next(head)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

