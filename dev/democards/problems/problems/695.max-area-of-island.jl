# @lc code=start
using LeetCode

function max_area_of_island(grid::Matrix{Int})
    function dfs(grid::Matrix{Int}, I)
        grid[I] = 0
        res = 1
        idcs = CartesianIndices(grid)
        for neighb in ((1, 0), (0, 1), (-1, 0), (0, -1))
            new_I = I + CartesianIndex(neighb)
            (new_I ∈ idcs && grid[new_I] == 1) && (res += dfs(grid, new_I))
        end
        return res
    end
    res = 0
    for I in CartesianIndices(grid)
        (grid[I] == 1) && (res = max(res, dfs(grid, I)))
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

