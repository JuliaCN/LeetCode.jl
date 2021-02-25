# @lc code=start
using LeetCode

function transpose_matrix(matrix::Vector{Vector{Int}})::Vector{Vector{Int}}
    m, n = length(matrix), length(matrix[1])

    transpose_mat = [[0 for _ = 1:m] for _ = 1:n]

    for i = 1:m, j = 1:n
        transpose_mat[j][i] = matrix[i][j]
    end

    return transpose_mat
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

