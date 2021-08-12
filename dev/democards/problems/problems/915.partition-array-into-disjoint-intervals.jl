# @lc code=start
using LeetCode

function partition_disjoint(nums::Vector{Int})
    n, pos = length(nums), 0
    maxn = leftm = nums[1]
    for i in 2:n
        maxn = max(maxn, nums[i])
        if nums[i] < leftm
            leftm = maxn
            pos = i
        end
    end
    return pos
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

