# @lc code=start
using LeetCode

function xor_queries(arr::Vector{Int}, queries::Vector{Vector{Int}})
    pushfirst!(arr, 0)
    off_arr = OffsetArray(arr, -1)
    for i in 1:(length(arr) - 1)
        @inbounds off_arr[i] = off_arr[i] ⊻ off_arr[i - 1]
    end
    res = fill(0, length(queries))
    for (idx, q) in enumerate(queries)
        @inbounds res[idx] = off_arr[q[2] + 1] ⊻ off_arr[q[1]]
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

