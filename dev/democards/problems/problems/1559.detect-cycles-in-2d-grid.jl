# @lc code=start
using LeetCode

function contains_cycle(grid::Vector{Vector{String}})
    dirs = ((1, 0, 3), (-1, 0, 0), (0, 1, 1), (0, -1, 2))
    function bfs(grid::Vector{Vector{String}}, r::Int, c::Int)
        sym = grid[r][c]
        q_pos = Queue{Pair{Int, Int}}()
        q_dir = Queue{Int}()
        enqueue!(q_pos, Pair(r, c))
        enqueue!(q_dir, 0)
        visited[r, c] = true
        while !isempty(q_pos)
            pos = dequeue!(q_pos)
            dir = dequeue!(q_dir)
            for d in dirs
                nx, ny = pos.first + d[1], pos.second + d[2]
                if 0 < nx <= nr && 0 < ny <= nc && dir != d[3] && sym == grid[nx][ny]
                    if visited[nx, ny]
                        return true
                    else
                        visited[nx, ny] = true
                        enqueue!(q_pos, Pair(nx, ny))
                        enqueue!(q_dir, 3 - d[3])
                    end
                end
            end
        end
        false
    end
    nr, nc = length(grid), length(grid[1])
    visited = fill(false, nr, nc)
    for r in 1 : nr
        for c in 1 : nc
            if !visited[r, c] && bfs(grid, r, c)
                # println(grid[r][c])
                return true
            end
        end
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

