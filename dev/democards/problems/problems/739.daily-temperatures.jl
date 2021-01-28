# @lc code=start
using LeetCode

function daily_temperatures(T::Vector{Int})
    res = fill(0, length(T))
    stk = Int[]
    for i in 1:length(T)
        while !isempty(stk) && T[stk[end]] < T[i]
            res[stk[end]] = i - stk[end]
            pop!(stk)
        end
        push!(stk, i)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

