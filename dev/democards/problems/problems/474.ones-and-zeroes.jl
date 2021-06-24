# @lc code=start
using LeetCode

function find_max_form(strs::Vector{String}, m::Int, n::Int)
    dp = OffsetArray(fill(0, m + 1, n + 1), -1, -1)
    for str in strs
        o = count(==('1'), str)
        z = length(str) - o
        for j in m:-1:z, k in n:-1:o
            dp[j, k] = max(dp[j, k], dp[j - z, k - o] + 1)
        end
    end
    return dp[end]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

