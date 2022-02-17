# @lc code=start
using LeetCode

function min_path_sum!(grid::Vector{Vector{Int}})::Int
    m, n = length(grid), length(grid[1])
    for i in 2:n
        grid[1][i] += grid[1][i - 1]
    end
    for i in 2:m
        grid[i][1] += grid[i - 1][1]
    end
    for i in 2:m
        for j in 2:n
            grid[i][j] += min(grid[i - 1][j], grid[i][j - 1])
        end
    end
    return grid[end][end]
end
min_path_sum(grid::Vector{Vector{Int}}) = min_path_sum!(copy(grid))
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

