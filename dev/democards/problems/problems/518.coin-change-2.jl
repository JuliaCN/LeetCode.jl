# @lc code=start
using LeetCode

function change(amount::Int, coins::Vector{Int})
    :Int
    dp = fill(0, amount)

    for coin in coins
        for x = coin:amount
            if x == coin
                dp[x] += 1
            else
                dp[x] += dp[x-coin]
            end
        end
    end

    return dp[amount]

end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

