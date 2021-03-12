# @lc code=start
using LeetCode

function remove_duplicates(S::String)::String
    stk = Char[]

    for ch in S
        if !isempty(stk) && stk[end] == ch
            pop!(stk)
        else
            push!(stk, ch)
        end
    end

    return join(stk)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

