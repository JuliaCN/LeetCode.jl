# ---
# title: 542. 01 Matrix
# id: problem542
# author: Tian Jun
# date: 2020-10-31
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

## add your code here:
## @lc code=end
