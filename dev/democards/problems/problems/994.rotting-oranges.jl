# @lc code=start
using LeetCode, DataStructures

function oranges_rotting(grid::Vector{Vector{Int}})
    nr, nc = length(grid), length(grid[1])
    visited = fill(false, nr, nc)
    q = Queue{Tuple{Int,Int,Int}}()
    left, res = 0, 0
    for r in 1:nr, c in 1:nc
        if grid[r][c] == 2
            enqueue!(q, (r, c, 0))
        elseif grid[r][c] == 1
            left += 1
        end
    end
    dirs = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    while !isempty(q)
        tp = dequeue!(q)
        for dir in dirs
            nb = (tp[1] + dir[1], tp[2] + dir[2], tp[3] + 1)
            if 0 < nb[1] ≤ nr &&
               0 < nb[2] ≤ nc &&
               !visited[nb[1], nb[2]] &&
               grid[nb[1]][nb[2]] == 1
                left -= 1
                visited[nb[1], nb[2]] = true
                enqueue!(q, nb)
            end
        end
        res = tp[3]
    end
    left == 0 ? res : -1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

