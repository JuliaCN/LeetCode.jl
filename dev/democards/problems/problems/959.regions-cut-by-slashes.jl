# @lc code=start
using LeetCode

function regions_by_slashes(grid::Vector{String})
    # Like Problem 200
    function dfs(grid::Matrix{Int}, r, c)
        grid[r, c] = 1
        (r + 1 <= len * 3) && grid[r+1, c] == 0 && dfs(grid, r+1, c)
        (r - 1 > 0) && grid[r-1, c] == 0 && dfs(grid, r-1, c)
        (c + 1 <= len * 3) && grid[r, c+1] == 0 && dfs(grid, r, c+1)
        (c - 1 > 0) && grid[r, c-1] == 0 && dfs(grid, r, c-1)
        nothing
    end
    len = length(grid)
    new_grid = fill(0, len * 3, len * 3)
    res = 0
    for i in 1:len
        for j in 1:len
            if grid[i][j] == '\\'
                new_grid[3 * i - 2, 3 * j - 2] = new_grid[3 * i - 1, 3 * j - 1] = new_grid[3 * i, 3 * j] = 1
            elseif grid[i][j] == '/'
                new_grid[3 * i - 2, 3 * j] = new_grid[3 * i - 1, 3 * j - 1] = new_grid[3 * i, 3 * j - 2] = 1
            end
        end
    end
    display(new_grid)
    for r in 1 : len * 3
        for c in 1 : len * 3
            if new_grid[r, c] == 0
                res += 1
                dfs(new_grid, r, c)
            end
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

