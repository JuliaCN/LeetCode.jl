# @lc code=start
using LeetCode

function reach_number(target::Integer)
    target = abs(target)
    k = 0
    while target > 0
        k += 1
        target = target - k
    end
    return iseven(target) ? k : k + 1 + k % 2
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

