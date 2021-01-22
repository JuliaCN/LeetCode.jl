# @lc code=start
using LeetCode

function min_days_1553(n::Int)
    memo = Dict{Int, Int}()
    memo[0] = 0
    memo[1] = 1
    function min_days(n::Int)
        if haskey(memo, n)
            return memo[n]
        end
        return memo[n] = 1 + min(min_days(n ÷ 2) + n % 2, min_days(n ÷ 3) + n % 3)
    end
    min_days(n)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

