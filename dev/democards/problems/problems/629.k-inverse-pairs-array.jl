# @lc code=start
using LeetCode

function k_inverse_pairs(n::Int, k::Int)
    dp = OffsetArray(fill(0, n + 1, k + 1), -1, -1)
    dp[:, 0] .= 1
    m = 1000000007
    @inbounds for i in 1:n, j in 1:min(k, i * (i - 1) ÷ 2)
        val = dp[i - 1, j] - ((j - i) >= 0 ? dp[i - 1, j - i] : 0)
        dp[i, j] = (dp[i, j - 1] + val) % m
    end
    return (dp[n, k] + m) % m
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

