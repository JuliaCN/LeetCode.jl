# ---
# title: 59. Spiral Matrix II
# id: problem59
# author: Qling
# date: 2021-03-16
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/spiral-matrix-ii/description/>
# hidden: true
# ---
# 
# Given a positive integer `n`, generate an `n x n` `matrix` filled with
# elements from `1` to `n2` in spiral order.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/11/13/spiraln.jpg)
# 
#     
#     
#     Input: n = 3
#     Output: [[1,2,3],[8,9,4],[7,6,5]]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 1
#     Output: [[1]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 20`
# 
# 
## @lc code=start
using LeetCode

function generate_matrix(n::Int)::Vector{Vector{Int}}
    mat = [fill(0, n) for _ = 1:n]
    i, j, di, dj = 1, 1, 0, 1

    for k = 1:n*n
        mat[i][j] = k
        if mat[mod1(i + di, n)][mod1(j + dj, n)] != 0
            di, dj = dj, -di
        end

        i += di
        j += dj
    end

    return mat
end
## @lc code=end
