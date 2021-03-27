# @lc code=start
using LeetCode

function set_zeroes(matrix::Vector{Vector{Int}})::Vector{Vector{Int}}
    is_col = false
    m, n = length(matrix), length(matrix[1])

    for i = 1:m
        matrix[i][1] == 0 && (is_col = true)

        for j = 2:n
            matrix[i][j] == 0 && (matrix[i][1] = matrix[1][j] = 0)
        end
    end

    for i = 2:m, j = 2:n
        (matrix[i][1] == 0 || matrix[1][j] == 0) && (matrix[i][j] = 0)
    end

    # See if the first row needs to be set to zero as well
    if matrix[1][1] == 0
        for j = 1:n
            matrix[1][j] = 0
        end
    end

    # See if the first column needs to be set to zero as well
    if is_col
        for i = 1:m
            matrix[i][1] = 0
        end
    end

    return matrix
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

