# @lc code=start
using LeetCode

function longest_valid_parentheses(s::String)::Int
    dp = zeros(Int, length(s))
    n = 0
    for i in 2:length(s)
        if s[i] == ')'
            if s[i - 1] == '('
                # case 1: ()()
                dp[i] = i == 2 ? 2 : dp[i - 2] + 2
            else
                # case 2: (())
                i₍ = i - dp[i - 1] - 1
                if i₍ >= 1 && s[i₍] == '('
                    if dp[i - 1] > 0
                        dp[i] = dp[i - 1] + 2 + (i₍ == 1 ? 0 : dp[i₍ - 1])
                    end
                end
            end
            n = max(n, dp[i])
        end
    end
    return n
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

