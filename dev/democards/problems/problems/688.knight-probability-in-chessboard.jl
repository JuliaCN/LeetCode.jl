# @lc code=start
using LeetCode

function knight_probability(n::Int, k::Int, row::Int, col::Int)
    dp = fill(0, n, n, 2)
    dp[row + 1, col + 1, 1] = 1
    for i in 1:k
        dp1 = @view(dp[:, :, mod1(i, 2)])
        dp2 = @view(dp[:, :, mod1(i + 1, 2)])
        idcs = CartesianIndices(dp2)
        for I in idcs, hop in ((1, 2), (2, 1), (-1, 2), (2, -1), (1, -2), (-2, 1), (-1, -2), (-2, -1))
            new_I = I + CartesianIndex(hop)
            new_I ∈ idcs && (dp2[new_I] += dp1[I])
        end
        fill!(dp1, 0)
    end
    return sum(dp) / 8 ^ k
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

