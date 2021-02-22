# @lc code=start
using LeetCode

function matrixReshape(nums::Vector{Vector{Int}}, r::Int, c::Int)
    m, n = length(nums), length(nums[1])

    m * n != r * c && return nums

    ans = [[0 for _ in 1:c] for _ in 1:r]

    for x in 0:(m * n - 1)
        ans[x ÷ c + 1][(x % c) + 1] = nums[x ÷ n + 1][(x % n) + 1]
    end

    return ans
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

