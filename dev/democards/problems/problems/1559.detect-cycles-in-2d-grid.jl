# @lc code=start
using LeetCode

function contains_cycle(grid::Vector{Vector{String}})
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
            if pos.first < nr && dir != 3 && sym == grid[pos.first + 1][pos.second]
                if visited[pos.first + 1, pos.second]
                    return true
                else
                    visited[pos.first + 1, pos.second] = true
                    enqueue!(q_pos, Pair(pos.first + 1, pos.second))
                    enqueue!(q_dir, 1)
                end
            end
            if pos.first > 1 && dir != 1 && sym == grid[pos.first - 1][pos.second]
                if visited[pos.first - 1, pos.second]
                    return true
                else
                    visited[pos.first - 1, pos.second] = true
                    enqueue!(q_pos, Pair(pos.first - 1, pos.second))
                    enqueue!(q_dir, 3)
                end
            end
            if pos.second < nc && dir != 2 && sym == grid[pos.first][pos.second + 1]
                if visited[pos.first, pos.second + 1]
                    return true
                else
                    visited[pos.first, pos.second + 1] = true
                    enqueue!(q_pos, Pair(pos.first, pos.second + 1))
                    enqueue!(q_dir, 4)
                end
            end

            if pos.second > 1 && dir != 4 && sym == grid[pos.first][pos.second - 1]
                if visited[pos.first, pos.second - 1]
                    return true
                else
                    visited[pos.first, pos.second - 1] = true
                    enqueue!(q_pos, Pair(pos.first, pos.second - 1))
                    enqueue!(q_dir, 2)
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

                return true
            end
        end
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

