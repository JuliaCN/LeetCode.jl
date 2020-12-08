# ---
# title: 1007. Minimum Domino Rotations For Equal Row
# id: problem1007
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Greedy
# link: <https://leetcode.com/problems/minimum-domino-rotations-for-equal-row/description/>
# hidden: true
# ---
# 
# In a row of dominoes, `A[i]` and `B[i]` represent the top and bottom halves of
# the `ith` domino.  (A domino is a tile with two numbers from 1 to 6 - one on
# each half of the tile.)
# 
# We may rotate the `ith` domino, so that `A[i]` and `B[i]` swap values.
# 
# Return the minimum number of rotations so that all the values in `A` are the
# same, or all the values in `B` are the same.
# 
# If it cannot be done, return `-1`.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/03/08/domino.png)
# 
#     
#     
#     Input: A = [2,1,2,4,2,2], B = [5,2,6,2,3,2]
#     Output: 2
#     Explanation: 
#     The first figure represents the dominoes as given by A and B: before we do any rotations.
#     If we rotate the second and fourth dominoes, we can make every value in the top row equal to 2, as indicated by the second figure.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [3,5,1,2,3], B = [3,6,3,3,4]
#     Output: -1
#     Explanation: 
#     In this case, it is not possible to rotate the dominoes to make one row of values equal.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= A.length == B.length <= 2 * 104`
#   * `1 <= A[i], B[i] <= 6`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
