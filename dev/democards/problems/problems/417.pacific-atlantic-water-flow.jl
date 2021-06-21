# @lc code=start
using LeetCode

function pacific_atlantic(heights::Matrix{Int})
    r, c = size(heights)
    visited = fill(false, r, c)
    res = fill(0x0, r, c)
    res[1:end, 1] .= 0x1
    res[1, 1:end] .= 0x1
    res[end, 1:end] .= 0x2
    res[1:end, end] .= 0x2
    res[1, end] = res[end, 1] = 0x3
    dirs = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    function dfs(x, y)
        visited[x, y] = true
        for dir in dirs
            nx, ny = x + dir[1], y + dir[2]
            (0 < nx <= r && 0 < ny <= c) || continue
            if heights[x, y] <= heights[nx, ny]
                res[nx, ny] |= res[x, y]
                !visited[nx, ny] && dfs(nx, ny)
            end
        end
    end
    for i in 1:r
        dfs(i, 1), dfs(i, c)
    end
    for j in 1:c
        dfs(1, j), dfs(r, j)
    end
    r = Set{Tuple{Int, Int}}()
    for cidx in CartesianIndices(res)
        res[cidx] == 0x3 && push!(r, cidx.I)
    end
    return r
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

