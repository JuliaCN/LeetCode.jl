# @lc code=start
using LeetCode

function num_rabbits(answer::Vector{Int})
    cnt = counter(answer)
    res = 0
    for (key, v) in cnt
        res += ((v - 1) ÷ (key + 1) + 1) * (key + 1)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

