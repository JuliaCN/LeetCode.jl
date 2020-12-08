# ---
# title: 1252. Cells with Odd Values in a Matrix
# id: problem1252
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/cells-with-odd-values-in-a-matrix/description/>
# hidden: true
# ---
# 
# Given `n` and `m` which are the dimensions of a matrix initialized by zeros
# and given an array `indices` where `indices[i] = [ri, ci]`. For each pair of
# `[ri, ci]` you have to increment all cells in row `ri` and column `ci` by 1.
# 
# Return _the number of cells with odd values_ in the matrix after applying the
# increment to all `indices`.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/10/30/e1.png)
# 
#     
#     
#     Input: n = 2, m = 3, indices = [[0,1],[1,1]]
#     Output: 6
#     Explanation: Initial matrix = [[0,0,0],[0,0,0]].
#     After applying first increment it becomes [[1,2,1],[0,1,0]].
#     The final matrix will be [[1,3,1],[1,3,1]] which contains 6 odd numbers.
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2019/10/30/e2.png)
# 
#     
#     
#     Input: n = 2, m = 2, indices = [[1,1],[0,0]]
#     Output: 0
#     Explanation: Final matrix = [[2,2],[2,2]]. There is no odd number in the final matrix.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 50`
#   * `1 <= m <= 50`
#   * `1 <= indices.length <= 100`
#   * `0 <= indices[i][0] < n`
#   * `0 <= indices[i][1] < m`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
