# ---
# title: 764. Largest Plus Sign
# id: problem764
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/largest-plus-sign/description/>
# hidden: true
# ---
# 
# In a 2D `grid` from (0, 0) to (N-1, N-1), every cell contains a `1`, except
# those cells in the given list `mines` which are `0`. What is the largest axis-
# aligned plus sign of `1`s contained in the grid? Return the order of the plus
# sign. If there is none, return 0.
# 
# An " _axis-aligned plus sign of`1`s_ of order **k** " has some center
# `grid[x][y] = 1` along with 4 arms of length `k-1` going up, down, left, and
# right, and made of `1`s. This is demonstrated in the diagrams below. Note that
# there could be `0`s or `1`s beyond the arms of the plus sign, only the
# relevant area of the plus sign is checked for 1s.
# 
# **Examples of Axis-Aligned Plus Signs of Order k:**  
# 
#     
#     
#     Order 1:
#     000
#     0 **1** 0
#     000
#     
#     Order 2:
#     00000
#     00 **1** 00
#     0 **111** 0
#     00 **1** 00
#     00000
#     
#     Order 3:
#     0000000
#     000 **1** 000
#     000 **1** 000
#     0 **11111** 0
#     000 **1** 000
#     000 **1** 000
#     0000000
#     
# 
# **Example 1:**  
# 
#     
#     
#     Input: N = 5, mines = [[4, 2]]
#     Output: 2
#     Explanation:
#     11111
#     11111
#     1 **1** 111
#     **111** 11
#     1 **1** 011
#     In the above grid, the largest plus sign can only be order 2.  One of them is marked in bold.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: N = 2, mines = []
#     Output: 1
#     Explanation:
#     There is no plus sign of order 2, but there is of order 1.
#     
# 
# **Example 3:**  
# 
#     
#     
#     Input: N = 1, mines = [[0, 0]]
#     Output: 0
#     Explanation:
#     There is no plus sign, so return 0.
#     
# 
# **Note:**  
# 
#   1. `N` will be an integer in the range `[1, 500]`.
#   2. `mines` will have length at most `5000`.
#   3. `mines[i]` will be length 2 and consist of integers in the range `[0, N-1]`.
#   4. _(Additionally, programs submitted in C, C++, or C# will be judged with a slightly smaller time limit.)_
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
