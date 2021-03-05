# @lc code=start
using LeetCode

struct NumMatrix
    sums::Vector{Vector{Int}}
    function NumMatrix(matrix::Vector{Vector{Int}})
        m, n = length(matrix), length(matrix[1])
        sums = [fill(0, n + 1) for _ = 1:m]

        for i = 1:m, j = 1:n
            sums[i][j+1] = sums[i][j] + matrix[i][j]
        end

        new(sums)
    end
end

sum_region(matrix::NumMatrix, row1::Int, col1::Int, row2::Int, col2::Int) =
    sum(matrix.sums[i][col2+1] - matrix.sums[i][col1] for i = row1:row2)

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

