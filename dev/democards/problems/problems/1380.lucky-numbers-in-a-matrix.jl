# @lc code=start
using LeetCode
function lucky_numbers(matrix::Vector{Vector{Int}})::Vector{Int}
    m, n = length(matrix), length(matrix[1])
    row_min = Dict{Int,Tuple{Int,Int}}(i => (matrix[i][1], 1) for i in 1:m)
    col_max = Dict{Int,Tuple{Int,Int}}(j => (0, 0) for j in 1:n)
    for i in 1:m
        for j in 1:n
            c = matrix[i][j]
            if c < row_min[i][1]
                row_min[i] = (c, j)
            end
            if c > col_max[j][1]
                col_max[j] = (c, i)
            end
        end
    end
    return [row_min[i][1] for i in 1:m if col_max[row_min[i][2]][2] == i]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

