# @lc code=start
using LeetCode

function monotone_increasing_digits(N::Int)::Int
    some_ones = 111111111
    res = 0
    for _ in 1:9
        while res + some_ones > N
            some_ones ÷= 10
        end
        res += some_ones
    end
    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

