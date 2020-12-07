# ---
# title: 576. Out of Boundary Paths
# id: problem576
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Dynamic Programming, Depth-first Search
# link: <https://leetcode.com/problems/out-of-boundary-paths/description/>
# hidden: true
# ---
# 
# There is an **m** by **n** grid with a ball. Given the start coordinate
# **(i,j)** of the ball, you can move the ball to **adjacent** cell or cross the
# grid boundary in four directions (up, down, left, right). However, you can
# **at most** move **N** times. Find out the number of paths to move the ball
# out of grid boundary. The answer may be very large, return it after mod 109 \+
# 7.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: m = 2, n = 2, N = 2, i = 0, j = 0
#     Output: 6
#     Explanation:
#     ![](https://assets.leetcode.com/uploads/2018/10/13/out_of_boundary_paths_1.png)
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: m = 1, n = 3, N = 3, i = 0, j = 1
#     Output: 12
#     Explanation:
#     ![](https://assets.leetcode.com/uploads/2018/10/12/out_of_boundary_paths_2.png)
#     
# 
# 
# 
# **Note:**
# 
#   1. Once you move the ball out of boundary, you cannot move it back.
#   2. The length and height of the grid is in range [1,50].
#   3. N is in range [0,50].
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
