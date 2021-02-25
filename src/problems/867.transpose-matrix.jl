# ---
# title: 867. Transpose Matrix
# id: problem867
# author: Qling
# date: 2021-02-25
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/transpose-matrix/description/>
# hidden: true
# ---
# 
# Given a matrix `A`, return the transpose of `A`.
# 
# The transpose of a matrix is the matrix flipped over it's main diagonal,
# switching the row and column indices of the matrix.
# 
#   
# ![](https://assets.leetcode.com/uploads/2019/10/20/hint_transpose.png)
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [[1,2,3],[4,5,6],[7,8,9]]
#     Output: [[1,4,7],[2,5,8],[3,6,9]]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [[1,2,3],[4,5,6]]
#     Output: [[1,4],[2,5],[3,6]]
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 1000`
#   2. `1 <= A[0].length <= 1000`
# 
# 
## @lc code=start
using LeetCode

function transpose(matrix::Vector{Vector{Int}})::Vector{Vector{Int}}
    m, n = length(matrix), length(matrix[1])

    transpose_matrix = [[0 for _ = 1:m] for _ = 1:n]

    for i = 1:m, j = 1:n
        transpose_matrix[j][i] = matrix[i][j]
    end

    return transpose_matrix
end
## @lc code=end
