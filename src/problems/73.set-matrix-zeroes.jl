# ---
# title: 73. Set Matrix Zeroes
# id: problem73
# author: Qling
# date: 2021-03-25
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/set-matrix-zeroes/description/>
# hidden: true
# ---
# 
# Given an ` _m_ x _n_` matrix. If an element is **0** , set its entire row and
# column to **0**. Do it [**in-place**](https://en.wikipedia.org/wiki/In-
# place_algorithm).
# 
# **Follow up:**
# 
#   * A straight forward solution using O( _m_ _n_ ) space is probably a bad idea.
#   * A simple improvement uses O( _m_ \+ _n_ ) space, but still not the best solution.
#   * Could you devise a constant space solution?
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/17/mat1.jpg)
# 
#     
#     
#     Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
#     Output: [[1,0,1],[0,0,0],[1,0,1]]
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/17/mat2.jpg)
# 
#     
#     
#     Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
#     Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == matrix.length`
#   * `n == matrix[0].length`
#   * `1 <= m, n <= 200`
#   * `-231 <= matrix[i][j] <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

function set_zeroes(matrix::Vector{Vector{Int}})::Vector{Vector{Int}}
    is_col = false
    m, n = length(matrix), length(matrix[1])

    for i in 1:m
        matrix[i][1] == 0 && (is_col = true)
        
        for j in 2:n
            matrix[i][j] == 0 && (matrix[i][1] = matrix[1][j] = 0)
        end
    end

    for i in 2:m, j in 2:n
        (matrix[i][1] == 0 || matrix[1][j] == 0) && (matrix[i][j] = 0)
    end

    ## See if the first row needs to be set to zero as well
    if matrix[1][1] == 0
        for j in 1: n
            matrix[1][j] = 0
        end
    end

    ## See if the first column needs to be set to zero as well 
    if is_col
        for i in 1:m
            matrix[i][1] = 0
        end
    end

    return matrix
end
## @lc code=end
