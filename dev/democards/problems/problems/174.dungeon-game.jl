# @lc code=start
using LeetCode

function calculate_minimum_hp(dungeon::Vector{Vector{Int}})
    m, n = length(dungeon), length(dungeon[1])
    dp = fill(typemax(Int) , m + 1, n + 1)
    dp[m+1, n] = dp[m, n+1] = 1
    for j in n:-1:1
        for i in m:-1:1
            dp[i, j] = max(min(dp[i+1, j], dp[i, j+1]) - dungeon[i][j], 1)
        end
    end
    dp[1, 1]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

