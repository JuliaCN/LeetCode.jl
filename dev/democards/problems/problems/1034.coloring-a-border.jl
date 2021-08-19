# @lc code=start
using LeetCode

function color_border(grid::Matrix{Int}, r0::Int, c0::Int, color::Int)
    visited = fill(false, size(grid))
    cis = CartesianIndices(grid)
    dirs = CartesianIndex.(((-1, 0), (1, 0), (0, -1), (0, 1)))
    cs = CartesianIndex{2}[]
    function dfs(grid::Matrix{Int}, pos)
        visited[pos] = true
        cnt = 0
        for d in dirs
            I = pos + d
            if I ∈ cis && grid[I] == grid[pos]
                cnt += 1
                !visited[I] && dfs(grid, I)
            end
        end
        (cnt != 4) && push!(cs, pos)
    end
    dfs(grid, CartesianIndex(r0, c0))
    for I in cs
        grid[I] = color
    end
    grid
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

