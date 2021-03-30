# ---
# title: 74. Search a 2D Matrix
# id: problem74
# author: Qling
# date: 2021-03-30
# difficulty: Medium
# categories: Array, Binary Search
# link: <https://leetcode.com/problems/search-a-2d-matrix/description/>
# hidden: true
# ---
# 
# Write an efficient algorithm that searches for a value in an `m x n` matrix.
# This matrix has the following properties:
# 
#   * Integers in each row are sorted from left to right.
#   * The first integer of each row is greater than the last integer of the previous row.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/05/mat.jpg)
# 
#     
#     
#     Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]], target = 3
#     Output: true
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/10/05/mat2.jpg)
# 
#     
#     
#     Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]], target = 13
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: matrix = [], target = 0
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == matrix.length`
#   * `n == matrix[i].length`
#   * `0 <= m, n <= 100`
#   * `-104 <= matrix[i][j], target <= 104`
# 
# 
## @lc code=start
using LeetCode

function search_matrix(matrix::Vector{Vector{Int}}, target::Int)::Bool
    m, n = length(matrix), length(matrix[1])

    (m == 0 || n == 0) && return false
    left, right = 1, m * n

    while left <= right
        mid = left + (right - left) ÷ 2
        num = matrix[mid÷n][mod1(mid, n)]
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
## @lc code=end
