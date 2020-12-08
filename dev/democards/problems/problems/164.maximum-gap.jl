# @lc code=start
using LeetCode

function maximum_gap(nums::Vector{Int})::Int
    sort!(nums)
    return length(nums) < 2 ? 0 : maximum(@view(nums[2:end]) - @view(nums[1:(end - 1)]))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

