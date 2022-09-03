# @lc code=start
using LeetCode

function max_sum_after_partitioning(arr::Vector{Int}, k::Int)
    n = length(arr)
    dp = OffsetArray(zeros(Int, n + 1), -1)
    for i in 1:n
        maxn = arr[i]
        dp[i] = maxn + dp[i - 1]
        for j in (i - 1):-1:max(1, i - k + 1)
            maxn = max(maxn, arr[j])
            dp[i] = max(dp[i], (i - j + 1) * maxn + dp[j - 1])
        end
    end
    return dp[n]
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

