# @lc code=start
using LeetCode

function array_pair_sum(nums::Vector{Int})
    sort!(nums)
    sum(nums[1:2:end])
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

