# @lc code=start
using LeetCode

function stone_game(piles::Vector{Int})
    len = length(piles)
    dp = Matrix{Int}(undef, len, len)
    for i in 1:len
        dp[i, i] = piles[i]
    end
    for i in (len - 1):-1:1, j in (i + 1):len
        dp[i, j] = max(piles[i] - dp[i + 1, j], piles[j] - dp[i, j - 1])
    end
    return dp[1, end] > 0
end

stone_game(::Vector{Int}) = true
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

