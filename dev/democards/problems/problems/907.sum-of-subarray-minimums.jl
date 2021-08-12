# @lc code=start
using LeetCode

function sum_subarray_mins(arr::Vector{Int})
    csum, res, md = 0, 0, Int(1e9) + 7
    stk = Int[]
    for i in eachindex(arr)
        while !isempty(stk) && arr[stk[end]] >= arr[i]
            tp = pop!(stk)
            ntop = isempty(stk) ? 0 : stk[end]
            csum += (arr[i] - arr[tp]) * (tp - ntop);
        end
        csum += arr[i]
        push!(stk, i)
        res += csum
    end
    return res % md
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

