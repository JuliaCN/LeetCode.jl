# @lc code=start
using LeetCode

function find_substring_in_wrapround_string(p::String)
    dp = fill(0, 26)
    k = 0
    iscont(prev, cur) = cur == (prev == 'z' ? 'a' : prev + 1)
    for i in 1:length(p)
        k = (i > 1 && iscont(p[i - 1], p[i])) ? k + 1 : 1
        dp[p[i] - 'a' + 1] = dp[p[i] - 'a' + 1] > k ? dp[p[i] - 'a' + 1] : k
    end
    return sum(dp)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

