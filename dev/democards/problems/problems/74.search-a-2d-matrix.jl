# @lc code=start
using LeetCode

function search_matrix(matrix::Vector{Vector{Int}}, target::Int)::Bool
    m, n = length(matrix), length(matrix[1])

    (m == 0 || n == 0) && return false
    left, right = 1, m * n

    while left <= right
        mid = left + (right - left) ÷ 2
        num = matrix[mid ÷ n][mod1(mid, n)]
        if num == target
            return true
        elseif num < target
            left = mid + 1
        else
            right = mid - 1
        end
    end

    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

