# @lc code=start
using LeetCode

function single_number_136(nums::Vector{Int})::Int
    a = 0
    for i in nums
        a ⊻= i
    end
    return a
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

