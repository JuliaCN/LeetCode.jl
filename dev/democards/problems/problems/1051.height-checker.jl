# @lc code=start
using LeetCode

function height_checker(heights::Vector{Int})
    sorted = sort(heights)
    return count(i -> heights[i] != sorted[i], 1:length(heights))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

