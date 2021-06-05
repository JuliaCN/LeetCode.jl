# @lc code=start
using LeetCode

function single_number(nums::Vector{Int})::Int
    a, b = 0, 0
    for num in nums
        b = (b ⊻ num) & ~a
        a = (a ⊻ num) & ~b
    end
    return b
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

