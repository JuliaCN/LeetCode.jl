# ---
# title: 240. Search a 2D Matrix II
# id: problem240
# author: woclass
# date: 2020-10-29
# difficulty: Medium
# categories: Binary Search, Divide and Conquer
# link: <https://leetcode.com/problems/search-a-2d-matrix-ii/description/>
# hidden: true
# ---
# 
# Write an efficient algorithm that searches for a `target` value in an `m x n`
# integer `matrix`. The `matrix` has the following properties:
# 
#   * Integers in each row are sorted in ascending from left to right.
#   * Integers in each column are sorted in ascending from top to bottom.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/24/searchgrid2.jpg)
# 
#     
#     
#     Input: matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], target = 5
#     Output: true
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/24/searchgrid.jpg)
# 
#     
#     
#     Input: matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], target = 20
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == matrix.length`
#   * `n == matrix[i].length`
#   * `1 <= n, m <= 300`
#   * `-109 <= matix[i][j] <= 109`
#   * All the integers in each row are **sorted** in ascending order.
#   * All the integers in each column are **sorted** in ascending order.
#   * `-109 <= target <= 109`
# 
# 
## @lc code=start
using LeetCode

function search_matrix(matrix::Matrix{Int}, target::Int)::Bool
    row, col = size(matrix)
    i, j = row, 1

    while (i > 0 && j <= col)
        last = matrix[i, j]

        if (last == target)
            return true
        elseif last > target
            i -= 1
        else
            j += 1
        end
    end

    return false
end
## @lc code=end
