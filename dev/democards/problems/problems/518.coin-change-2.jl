# @lc code=start
using LeetCode

function change(amount::Int, coins::Vector{Int})::Int
    dp = fill(0, amount)

    for coin in coins, x in coin:amount
        dp[x] += (x == coin) ? 1 : dp[x - coin]
    end

    return dp[amount]
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

