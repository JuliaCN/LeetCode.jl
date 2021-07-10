# @lc code=start
using LeetCode

function num_magic_squares_inside(grid::Matrix{Int})::Int
    r = [15, 15, 15]
    function is_magic_square(grid::AbstractMatrix{Int})
        sum(grid; dims=1) != reshape(r, 1, 3) && return false
        sum(grid; dims=2) != reshape(r, 3, 1) && return false
        sum(grid[i, i] for i in 1:3) == sum(grid[i, 4 - i] for i in 1:3) == 15 && return true
        return false
    end
    res = 0
    for j in 1:size(grid,2)-2, i in 1:size(grid,1)-2
        sub_mat = @view(grid[CartesianIndex(i, j):CartesianIndex(i+2, j+2)])
        all(x -> x in sub_mat, 1:9) && is_magic_square(sub_mat) && (res += 1)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

