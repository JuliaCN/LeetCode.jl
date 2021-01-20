# @lc code=start
using LeetCode

function lands_num(grid::Vector{Vector{String}})
    nr, nc = length(grid), length(grid[1])
    function dfs(grid::Vector{Vector{String}}, r, c)
        grid[r][c] = "0"
        (r + 1 <= nr) && grid[r+1][c] == "1" && dfs(grid, r+1, c)
        (r - 1 > 0) && grid[r-1][c] == "1" && dfs(grid, r-1, c)
        (c + 1 <= nc) && grid[r][c+1] == "1" && dfs(grid, r, c+1)
        (c - 1 > 0) && grid[r][c-1] == "1" && dfs(grid, r, c-1)
        nothing
    end
    res = 0
    for i in 1:nr
        for j in 1:nc
            if grid[i][j] == "1"
                res += 1
                dfs(grid, i, j)
            end
        end
    end
    res
end
lands_num([
         ["1","1","1","1","0"],
         ["1","1","0","1","0"],
         ["1","1","0","0","0"],
         ["0","0","0","0","0"]
       ])
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

