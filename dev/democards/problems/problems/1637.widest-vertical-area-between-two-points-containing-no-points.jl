# @lc code=start
using LeetCode

function max_width_of_vertical_area(points::Vector{Vector{Int}})
    sort!(points)
    return maximum(points[i][1] - points[i - 1][1] for i in 2 : length(points))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

