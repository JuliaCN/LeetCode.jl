# @lc code=start
using LeetCode

function unique_path_with_obstacles_63!(obstacleGrid::Vector{Vector{Int}})::Int
    m, n = length(obstacleGrid), length(obstacleGrid[1])
    obstacleGrid[1][1] = 1 - obstacleGrid[1][1]
    for i in 2:n
        obstacleGrid[1][i] = obstacleGrid[1][i] == 1 ? 0 : obstacleGrid[1][i - 1]
    end
    for i in 2:m
        obstacleGrid[i][1] = obstacleGrid[i][1] == 1 ? 0 : obstacleGrid[i - 1][1]
    end
    for i in 2:m
        for j in 2:n
            obstacleGrid[i][j] = if obstacleGrid[i][j] == 1
                0
            else
                obstacleGrid[i - 1][j] + obstacleGrid[i][j - 1]
            end
        end
    end
    return obstacleGrid[end][end]
end
function unique_path_with_obstacles_63(obstacleGrid::Vector{Vector{Int}})
    return unique_path_with_obstacles_63!(copy(obstacleGrid))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

