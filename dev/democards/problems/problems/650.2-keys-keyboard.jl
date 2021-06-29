# @lc code=start
using LeetCode

function min_steps650(n::Int)
    res, k = 0, 2
    while n != 1
        while n % k == 0
            res += k
            n ÷= k
        end
        k += 1
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

