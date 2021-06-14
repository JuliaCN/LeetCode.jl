# @lc code=start
using LeetCode

function coin_change(coins::Vector{Int}, amount::Int)
    res = OffsetArray(fill(amount + 1, 1 + amount), -1)
    res[0] = 0
    @inbounds for coin in coins, i in 0:(amount - coin)
        res[i + coin] = min(res[i + coin], res[i] + 1)
    end
    return res[end] == amount + 1 ? -1 : res[end]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

