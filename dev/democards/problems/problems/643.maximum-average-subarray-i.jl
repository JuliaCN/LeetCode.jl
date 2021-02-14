# @lc code=start
using LeetCode

function find_max_average(nums::Vector{Int}, K::Int)
    res = sum(@view(nums[1:K]))
    tmp = res
    i, j = 1, K + 1
    while j ≤ length(nums)
        tmp += nums[j] - nums[i]
        res = max(tmp, res)
        i += 1
        j += 1
    end
    res / K
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

