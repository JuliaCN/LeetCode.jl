# ---
# title: 1411. Number of Ways to Paint N × 3 Grid
# id: problem1411
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/number-of-ways-to-paint-n-3-grid/description/>
# hidden: true
# ---
# 
# You have a `grid` of size `n x 3` and you want to paint each cell of the grid
# with exactly one of the three colours: **Red** , **Yellow** or **Green**
# while making sure that no two adjacent cells have the same colour (i.e no two
# cells that share vertical or horizontal sides have the same colour).
# 
# You are given `n` the number of rows of the grid.
# 
# Return _the number of ways_ you can paint this `grid`. As the answer may grow
# large, the answer **must be** computed modulo `10^9 + 7`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 1
#     Output: 12
#     Explanation: There are 12 possible way to paint the grid as shown:
#     ![](https://assets.leetcode.com/uploads/2020/03/26/e1.png)
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 2
#     Output: 54
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: n = 3
#     Output: 246
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: n = 7
#     Output: 106494
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: n = 5000
#     Output: 30228214
#     
# 
# 
# 
# **Constraints:**
# 
#   * `n == grid.length`
#   * `grid[i].length == 3`
#   * `1 <= n <= 5000`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
