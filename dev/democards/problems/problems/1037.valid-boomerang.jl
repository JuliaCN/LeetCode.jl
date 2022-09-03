# @lc code=start
using LeetCode

function is_boomerang(points::Vector{Vector{Int}})
    p1, p2, p3 = points
    return (p1[1] - p2[1]) * (p1[2] - p3[2]) != (p1[1] - p3[1]) * (p1[2] - p2[2])
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

