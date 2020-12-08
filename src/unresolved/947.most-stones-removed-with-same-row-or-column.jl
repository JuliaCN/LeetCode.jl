# ---
# title: 947. Most Stones Removed with Same Row or Column
# id: problem947
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Depth-first Search, Union Find
# link: <https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/description/>
# hidden: true
# ---
# 
# On a 2D plane, we place stones at some integer coordinate points.  Each
# coordinate point may have at most one stone.
# 
# Now, a _move_ consists of removing a stone that shares a column or row with
# another stone on the grid.
# 
# What is the largest possible number of moves we can make?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: stones = [[0,0],[0,1],[1,0],[1,2],[2,1],[2,2]]
#     Output: 5
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: stones = [[0,0],[0,2],[1,1],[2,0],[2,2]]
#     Output: 3
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: stones = [[0,0]]
#     Output: 0
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= stones.length <= 1000`
#   2. `0 <= stones[i][j] < 10000`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
