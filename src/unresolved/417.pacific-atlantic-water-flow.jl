# ---
# title: 417. Pacific Atlantic Water Flow
# id: problem417
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Depth-first Search, Breadth-first Search
# link: <https://leetcode.com/problems/pacific-atlantic-water-flow/description/>
# hidden: true
# ---
# 
# Given an `m x n` matrix of non-negative integers representing the height of
# each unit cell in a continent, the "Pacific ocean" touches the left and top
# edges of the matrix and the "Atlantic ocean" touches the right and bottom
# edges.
# 
# Water can only flow in four directions (up, down, left, or right) from a cell
# to another one with height equal or lower.
# 
# Find the list of grid coordinates where water can flow to both the Pacific and
# Atlantic ocean.
# 
# **Note:**
# 
#   1. The order of returned grid coordinates does not matter.
#   2. Both _m_ and _n_ are less than 150.
# 
# 
# 
# **Example:**
# 
#     
#     
#     Given the following 5x5 matrix:
#     
#       Pacific ~   ~   ~   ~   ~ 
#            ~  1   2   2   3  (5) *
#            ~  3   2   3  (4) (4) *
#            ~  2   4  (5)  3   1  *
#            ~ (6) (7)  1   4   5  *
#            ~ (5)  1   1   2   4  *
#               *   *   *   *   * Atlantic
#     
#     Return:
#     
#     [[0, 4], [1, 3], [1, 4], [2, 2], [3, 0], [3, 1], [4, 0]] (positions with parentheses in above matrix).
#     
# 
# 
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
