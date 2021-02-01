# @lc code=start
using LeetCode

function surface_area(grid::Vector{Vector{Int}})
    res = 2 * sum(sum(1 for i in row if i != 0) for row in grid)
    res += sum(row[1] + row[end] + sum(abs, diff(row)) for row in grid)
    return res += sum(grid[1][i] +
                      grid[end][i] +
                      ((length(grid) > 1) ?
                       (sum(abs(grid[row][i] - grid[row - 1][i]) for row in 2:length(grid))) :
                       0) for i in 1:length(grid[1]))
end
function surface_area(grid::Matrix{Int})
    res = 2 * sum(sum(1 for i in row if i != 0) for row in grid)
    res += sum(row[1] + row[end] + sum(abs, diff(row)) for row in eachrow(grid))
    res += sum(col[1] + col[end] + sum(abs, diff(col)) for col in eachcol(grid))
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

