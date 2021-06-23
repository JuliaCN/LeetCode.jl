# ---
# title: 542. 01 Matrix
# id: problem542
# author: Indigo
# date: 2021-06-23
# difficulty: Medium
# categories: Depth-first Search, Breadth-first Search
# link: <https://leetcode.com/problems/01-matrix/description/>
# hidden: true
# ---
# 
# Given a matrix consists of 0 and 1, find the distance of the nearest 0 for
# each cell.
# 
# The distance between two adjacent cells is 1.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input:
#     [[0,0,0],
#      [0,1,0],
#      [0,0,0]]
#     
#     Output:
#     [[0,0,0],
#      [0,1,0],
#      [0,0,0]]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input:
#     [[0,0,0],
#      [0,1,0],
#      [1,1,1]]
#     
#     Output:
#     [[0,0,0],
#      [0,1,0],
#      [1,2,1]]
#     
# 
# 
# 
# **Note:**
# 
#   1. The number of elements of the given matrix will not exceed 10,000.
#   2. There are at least one 0 in the given matrix.
#   3. The cells are adjacent in only four directions: up, down, left and right.
# 
# 
## @lc code=start
using LeetCode

function update_matrix(mat::Matrix{Int})
    m, n = size(mat)
    dist = fill(typemax(Int) >> 1, m, n)
    for I in CartesianIndices(mat)
        (mat[I] == 0) && (dist[I] = 0)
    end
    for i in 1:m, j in 1:n
        (i - 1 >= 1) && (dist[i, j] = min(dist[i, j], dist[i - 1, j] + 1))
        (j - 1 >= 1) && (dist[i, j] = min(dist[i, j], dist[i, j - 1] + 1))
    end
    for i in m:-1:1, j in n:-1:1
        (i + 1 <= m) && (dist[i, j] = min(dist[i, j], dist[i + 1, j] + 1))
        (j + 1 <= n) && (dist[i, j] = min(dist[i, j], dist[i, j + 1] + 1))
    end
    return dist
end
## @lc code=end
