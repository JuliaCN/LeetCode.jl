# ---
# title: 54. Spiral Matrix
# id: problem54
# author: Qling
# date: 2021-03-15
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/spiral-matrix/description/>
# hidden: true
# ---
# 
# Given an `m x n` `matrix`, return _all elements of the_ `matrix` _in spiral
# order_.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/13/spiral1.jpg)
# 
#     
#     
#     Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
#     Output: [1,2,3,6,9,8,7,4,5]
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/13/spiral.jpg)
# 
#     
#     
#     Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
#     Output: [1,2,3,4,8,12,11,10,9,5,6,7]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == matrix.length`
#   * `n == matrix[i].length`
#   * `1 <= m, n <= 10`
#   * `-100 <= matrix[i][j] <= 100`
# 
# 
## @lc code=start
using LeetCode

function spiral_order(matrix::Vector{Vector{Int}})::Vector{Int}
    res = Int[]
    while !isempty(matrix)
        for each in popfirst!(matrix)
            push!(res, each)
        end

        if !isempty(matrix) && !isempty(matrix[1])
            for row in matrix
                push!(res, pop!(row))
            end
        end

        if !isempty(matrix)
            for each in pop!(matrix)[end:-1:1]
                push!(res, each)
            end
        end

        if !isempty(matrix) && !isempty(matrix[1])
            for row in matrix[end:-1:1]
                push!(res, popfirst!(row))
            end
        end
    end

    return res
end
## @lc code=end
