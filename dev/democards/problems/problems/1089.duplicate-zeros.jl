# @lc code=start
using LeetCode

function duplicate_zeros!(arr::Vector{Int})
    len = length(arr)
    for i in reverse(eachindex(arr))
        iszero(arr[i]) && insert!(arr, i, 0)
    end
    resize!(arr, len)
    nothing
end

# add your code here:
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

