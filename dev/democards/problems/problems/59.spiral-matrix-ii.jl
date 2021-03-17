# @lc code=start
using LeetCode

function generate_matrix(n::Int)::Vector{Vector{Int}}
    mat = [fill(0, n) for _ = 1:n]
    i, j, di, dj = 1, 1, 0, 1

    for k = 1:n*n
        mat[i][j] = k
        if mat[mod1(i + di, n)][mod1(j + dj, n)] != 0
            di, dj = dj, -di
        end

        i += di
        j += dj
    end

    return mat
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

