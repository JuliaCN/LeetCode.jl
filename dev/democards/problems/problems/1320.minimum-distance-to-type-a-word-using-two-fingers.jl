# @lc code=start
using LeetCode

function minimum_distance(word::String)
    distance(p, q) = abs(p ÷ 6 - q ÷ 6) + abs(p % 6 - q % 6)
    len = length(word)
    dp = fill(typemax(Int) >> 1, len, 26, 26)
    dp[1, :, word[1] - 'A' + 1] .= dp[1, word[1] - 'A' + 1, :] .= 0
    for i in 2:len
        cur = word[i] - 'A' + 1
        prev = word[i - 1] - 'A' + 1
        d = distance(cur - 1, prev - 1)
        for j in 1:26
            dp[i, cur, j] = min(dp[i, cur, j], dp[i - 1, prev, j] + d)
            dp[i, j, cur] = min(dp[i, j, cur], dp[i - 1, j, prev] + d)
            if prev == j
                for k in 1:26
                    d0 = distance(k - 1, cur - 1)
                    dp[i, cur, prev] = min(dp[i, cur, prev], dp[i - 1, k, prev] + d0)
                    dp[i, prev, cur] = min(dp[i, prev, cur], dp[i - 1, prev, k] + d0)
                end
            end
        end
    end
    min(minimum(dp[len, :, word[end] - 'A' + 1]), minimum(dp[len, word[end] - 'A' + 1, :]))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

