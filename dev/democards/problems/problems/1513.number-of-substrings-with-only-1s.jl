# @lc code=start
using LeetCode

function num_sub(s::String)
    ss = split(s, '0')
    sum(binomial(length(subs) + 1, 2) for subs in ss)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

