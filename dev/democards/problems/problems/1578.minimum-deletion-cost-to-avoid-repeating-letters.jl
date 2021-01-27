# @lc code=start
using LeetCode

function min_cost_1578(s::String, cost::Vector{Int})
    if length(s) == 0
        return 0
    end
    s *= "0"
    lst_char = s[1]
    len, res = 1, 0
    for i in 2:length(s)
        if s[i] == lst_char
            len += 1
        else
            res += sum(cost[i-len:i-1]) - maximum(cost[i-len:i-1])
            len, lst_char = 1, s[i]
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

