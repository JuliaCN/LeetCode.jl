# @lc code=start
using LeetCode

function update_matrix(mat::Matrix{Int})
    m, n = size(mat)
    dist = fill(typemax(Int) >> 1, m, n)
    for I in CartesianIndices(mat)
        (mat[I] == 0) && (dist[I] = 0)
    end
    for i in 1:m, j in 1:n
        (i - 1 >= 1) && (dist[i, j] = min(dist[i, j], dist[i - 1, j] + 1))
        (j - 1 >= 1) && (dist[i, j] = min(dist[i, j], dist[i, j - 1] + 1))
    end
    for i in m:-1:1, j in n:-1:1
        (i + 1 <= m) && (dist[i, j] = min(dist[i, j], dist[i + 1, j] + 1))
        (j + 1 <= n) && (dist[i, j] = min(dist[i, j], dist[i, j + 1] + 1))
    end
    return dist
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

