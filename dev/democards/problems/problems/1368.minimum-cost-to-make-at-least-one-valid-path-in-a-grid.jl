# @lc code=start
using LeetCode

function min_cost1368(grid::Matrix)
    dx, dy = [1, -1, 0, 0], [0, 0, 1, -1]
    m, n = size(grid)
    dq = Deque{Tuple{Int,Int,Int}}()
    visited = fill(false, size(grid))
    pushfirst!(dq, (1, 1, 0))
    while !isempty(dq)
        x, y, w = popfirst!(dq)
        visited[x, y] && continue
        visited[x, y] = true
        (x == m && y == n) && return w
        for i in 1:4
            nx, ny = x + dx[i], y + dy[i]
            (1 <= nx <= m && 1 <= ny <= n) || continue
            grid[x, y] == i ? pushfirst!(dq, (nx, ny, w)) : push!(dq, (nx, ny, w + 1))
        end
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

