# @lc code=start
using LeetCode

function is_toeplitz_matrix(matrix::Vector{Vector{Int}})
    m, n = length(matrix), length(matrix[1])

    for i in 1:(m - 1)
        (matrix[i][1:(end - 1)] != matrix[i + 1][2:end]) && return false
    end

    return true
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

