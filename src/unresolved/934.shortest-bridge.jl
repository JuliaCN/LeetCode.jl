# ---
# title: 934. Shortest Bridge
# id: problem934
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Depth-first Search, Breadth-first Search
# link: <https://leetcode.com/problems/shortest-bridge/description/>
# hidden: true
# ---
# 
# In a given 2D binary array `A`, there are two islands.  (An island is a
# 4-directionally connected group of `1`s not connected to any other 1s.)
# 
# Now, we may change `0`s to `1`s so as to connect the two islands together to
# form 1 island.
# 
# Return the smallest number of `0`s that must be flipped.  (It is guaranteed
# that the answer is at least 1.)
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [[0,1],[1,0]]
#     Output: 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [[0,1,0],[0,0,0],[0,0,1]]
#     Output: 2
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = [[1,1,1,1,1],[1,0,0,0,1],[1,0,1,0,1],[1,0,0,0,1],[1,1,1,1,1]]
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= A.length == A[0].length <= 100`
#   * `A[i][j] == 0` or `A[i][j] == 1`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
