# @lc code=start
using LeetCode

function compute_area(coord::Vector{Int})
    if coord[1] > coord[5]
        coord[1:4], coord[5:8] = coord[5:8], coord[1:4]
    end
    if coord[8] <= coord[2] || coord[6] >= coord[4] || coord[5] >= coord[3]
        return 0
    end
    return (coord[3] - coord[1]) * (coord[4] - coord[2]) +
            (coord[7] - coord[5]) * (coord[8] - coord[6]) -
            (min(coord[3], coord[7]) - coord[5]) * (min(coord[8], coord[4]) - max(coord[2], coord[6]))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

