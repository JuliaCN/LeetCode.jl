# @lc code=start
using LeetCode

function check_straight_line(coordinates::Vector{Vector{Int}})::Bool
    coordinates .-= Ref(coordinates[1])
    slope = coordinates[2][1] // coordinates[2][2]
    for i in 3:length(coordinates)
        if coordinates[i][1] // coordinates[i][2] != slope
            return false
        end
    end
    true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

