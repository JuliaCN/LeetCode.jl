# @lc code=start
using LeetCode

function next_greater_element(num1::Vector{Int}, num2::Vector{Int})
    stk = Int[]
    res = fill(-1, length(num2))
    inv_idx = Dict{Int,Int}()
    for i in length(num2):-1:1
        inv_idx[num2[i]] = i
        while !isempty(stk) && stk[end] <= num2[i]
            pop!(stk)
        end
        res[i] = isempty(stk) ? -1 : stk[end]
        push!(stk, num2[i])
    end
    return [res[inv_idx[item]] for item in num1]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

