# @lc code=start
using LeetCode

function max_width_ramp(A::Vector{Int})
    res = 0
    stk = [1]
    for i in 2:length(A)
        (A[i] < A[stk[end]]) && (push!(stk, i))
    end
    for i in length(A):-1:2
        idx = i
        while !isempty(stk) && A[stk[end]] <= A[i]
            idx = pop!(stk)
        end
        res = max(i - idx, res)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

