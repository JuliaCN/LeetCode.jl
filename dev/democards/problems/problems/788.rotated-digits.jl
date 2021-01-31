# @lc code=start
using LeetCode

function rotated_digits(N::Int)
    if N <= 9
        return count(==(1), [0, 1, -1, -1, 1, 1, -1, 0, 1][1:N])
    end
    ans, dp = 0, vcat([0, 0, 1, -1, -1, 1, 1, -1, 0, 1], fill(0, N - 9))
    for i in 1:N-1
        dp[i + 1] = (-1 in [dp[i ÷ 10 + 1], dp[i % 10 + 1]]) ? -1 : (dp[i ÷ 10 + 1] | dp[i % 10 + 1])
        ans += (dp[i + 1] == 1)
    end
    ans
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

