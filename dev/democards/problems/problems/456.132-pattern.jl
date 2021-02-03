# @lc code=start
using LeetCode

function find132pattern(nums::Vector{Int})
    stk = Int[]
    second_great = typemin(Int)
    for num in Iterators.reverse(nums)
        second_great > num && return true
        while !isempty(stk) && stk[end] < num
            second_great = pop!(stk)
        end
        push!(stk, num)
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

