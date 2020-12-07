# ---
# title: 1582. Special Positions in a Binary Matrix
# id: problem1582
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/special-positions-in-a-binary-matrix/description/>
# hidden: true
# ---
# 
# Given a `rows x cols` matrix `mat`, where `mat[i][j]` is either `0` or `1`,
# return _the number of special positions in`mat`._
# 
# A position `(i,j)` is called **special**  if `mat[i][j] == 1` and all other
# elements in row `i` and column `j` are `0` (rows and columns are **0-indexed**
# ).
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: mat = [[1,0,0],
#                   [0,0, **1** ],
#                   [1,0,0]]
#     Output: 1
#     Explanation: (1,2) is a special position because mat[1][2] == 1 and all other elements in row 1 and column 2 are 0.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: mat = [[ **1** ,0,0],
#                   [0, **1** ,0],
#                   [0,0, **1** ]]
#     Output: 3
#     Explanation: (0,0), (1,1) and (2,2) are special positions. 
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: mat = [[0,0,0, **1** ],
#                   [ **1** ,0,0,0],
#                   [0,1,1,0],
#                   [0,0,0,0]]
#     Output: 2
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: mat = [[0,0,0,0,0],
#                   [ **1** ,0,0,0,0],
#                   [0, **1** ,0,0,0],
#                   [0,0, **1** ,0,0],
#                   [0,0,0,1,1]]
#     Output: 3
#     
# 
# 
# 
# **Constraints:**
# 
#   * `rows == mat.length`
#   * `cols == mat[i].length`
#   * `1 <= rows, cols <= 100`
#   * `mat[i][j]` is `0` or `1`.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
