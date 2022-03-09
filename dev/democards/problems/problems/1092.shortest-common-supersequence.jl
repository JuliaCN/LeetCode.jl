# @lc code=start
using LeetCode

function shortest_common_supersequence(str1::String, str2::String)
    m, n = length(str1), length(str2)
    dp = OffsetArray(fill(0, m + 1, n + 1), -1, -1)
    for i in 1:m, j in 1:n
        dp[i, j] = max(
            dp[i - 1, j], dp[i, j - 1], dp[i - 1, j - 1] + Int(str1[i] == str2[j])
        )
    end
    res = ""
    coord = CartesianIndex(m, n)
    while coord != CartesianIndex(0, 0)
        c1 = coord - CartesianIndex(1, 0)
        c2 = coord - CartesianIndex(0, 1)
        if c1 ∈ CartesianIndices(dp) && dp[coord] == dp[c1]
            res *= str1[coord[1]]
            coord -= CartesianIndex(1, 0)
        elseif c2 ∈ CartesianIndices(dp) && dp[coord] == dp[c2]
            res *= str2[coord[2]]
            coord -= CartesianIndex(0, 1)
        else
            res *= str1[coord[1]]
            coord -= CartesianIndex(1, 1)
        end
    end
    return reverse(res)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

