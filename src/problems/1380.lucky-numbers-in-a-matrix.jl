# ---
# title: 1380. Lucky Numbers in a Matrix
# id: problem1380
# author: zhwang
# date: 2022-02-15
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/lucky-numbers-in-a-matrix/description/>
# hidden: true
# ---
# 
# Given a `m * n` matrix of **distinct** numbers, return all lucky numbers in
# the matrix in **any** order.
# 
# A lucky number is an element of the matrix such that it is the minimum element
# in its row and maximum in its column.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: matrix = [[3,7,8],[9,11,13],[15,16,17]]
#     Output: [15]
#     Explanation: 15 is the only lucky number since it is the minimum in its row and the maximum in its column
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: matrix = [[1,10,4,2],[9,3,8,7],[15,16,17,12]]
#     Output: [12]
#     Explanation: 12 is the only lucky number since it is the minimum in its row and the maximum in its column.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: matrix = [[7,8],[1,2]]
#     Output: [7]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == mat.length`
#   * `n == mat[i].length`
#   * `1 <= n, m <= 50`
#   * `1 <= matrix[i][j] <= 10^5`.
#   * All elements in the matrix are distinct.
# 
# 
## @lc code=start
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
## @lc code=end
