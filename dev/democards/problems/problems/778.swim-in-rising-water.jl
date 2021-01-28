# @lc code=start
using LeetCode

function swim_in_water(grid::Vector{Vector{Int}})
    function neighbors(pos, len)
        res = Tuple{Int, Int}[]
        (pos[1] > 1) && (push!(res, (pos[1] - 1, pos[2])))
        (pos[1] < len) && (push!(res, (pos[1] + 1, pos[2])))
        (pos[2] > 1) && (push!(res, (pos[1], pos[2] - 1)))
        (pos[2] < len) && (push!(res, (pos[1], pos[2] + 1)))
        res
    end
    len = length(grid)
    visited = fill(false, len, len)
    pq = PriorityQueue{Tuple{Int, Int}, Int}()
    pq[(1, 1)] = grid[1][1]
    while !isempty(pq)
        pos, cost = dequeue_pair!(pq)
        visited[pos[1], pos[2]] = true
        if pos == (len, len)
            return cost
        end
        for neighbor in neighbors(pos, len)
            if !visited[neighbor[1], neighbor[2]]
                pq[neighbor] = min(max(grid[neighbor[1]][neighbor[2]], cost), get(pq, neighbor, typemax(Int)))
            end
        end
    end
    return 0
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

