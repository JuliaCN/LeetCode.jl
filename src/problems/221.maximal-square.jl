# ---
# title: 221. Maximal Square
# id: problem221
# author: Indigo
# date: 2021-05-29
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/maximal-square/description/>
# hidden: true
# ---
# 
# Given an `m x n` binary `matrix` filled with `0`'s and `1`'s, _find the
# largest square containing only_ `1`'s _and return its area_.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/26/max1grid.jpg)
# 
#     
#     
#     Input: matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
#     Output: 4
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/26/max2grid.jpg)
# 
#     
#     
#     Input: matrix = [["0","1"],["1","0"]]
#     Output: 1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: matrix = [["0"]]
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == matrix.length`
#   * `n == matrix[i].length`
#   * `1 <= m, n <= 300`
#   * `matrix[i][j]` is `'0'` or `'1'`.
# 
# 
## @lc code=start
using LeetCode

function maximal_square(matrix::Matrix{Char})
    length(matrix) == 0 && return 0
    maxs = any(==('1'), matrix)
    maxs == 0 && return 0
    m, n = size(matrix)
    dp = fill(0, size(matrix))
    for i in 1:m
        dp[i, 1] = matrix[i, 1] == '1'
    end
    for j in 1:n
        dp[1, j] = matrix[1, j] == '1'
    end
    for i in 2:m, j in 2:n
        if matrix[i, j] == '1'
            dp[i, j] = min(dp[i, j - 1], dp[i - 1, j], dp[i - 1, j - 1]) + 1
            maxs = max(maxs, dp[i, j])
        end
    end
    return maxs * maxs
end
## @lc code=end
