# @lc code=start
using LeetCode

function can_jump(nums::Vector{Int})::Bool
    n, rightmost = length(nums), 1
    for (i, num) in enumerate(nums)
        i > rightmost && return false
        rightmost = max(rightmost, i + num)
        rightmost >= n && return true
    end
    false
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

