# @lc code=start
using LeetCode

function shortest_path_binary_matrix(mat::Matrix{Int})
    visited = fill(false, size(mat))
    q = [CartesianIndex(1, 1)]
    dist = [1]
    visited[1, 1] = true
    directions = [CartesianIndex(i, j) for i in -1:1, j in -1:1 if i != 0 || j != 0]
    res = 0
    while !visited[end, end]
        frt = popfirst!(q)
        dst = popfirst!(dist)
        for dir in directions
            next_coord = frt + dir
            next_coord ∉ CartesianIndices(mat) && continue
            visited[next_coord] && continue
            visited[next_coord] = true
            if mat[next_coord] == 0
                push!(q, next_coord)
                push!(dist, dst + 1)
                res = dst + 1
            end
        end
    end
    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

