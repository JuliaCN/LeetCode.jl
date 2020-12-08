# ---
# title: 73. Set Matrix Zeroes
# id: problem73
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/set-matrix-zeroes/description/>
# hidden: true
# ---
# 
# Given an ` _m_ x _n_` matrix. If an element is **0** , set its entire row and
# column to **0**. Do it [**in-place**](https://en.wikipedia.org/wiki/In-
# place_algorithm).
# 
# **Follow up:**
# 
#   * A straight forward solution using O( _m_ _n_ ) space is probably a bad idea.
#   * A simple improvement uses O( _m_ \+ _n_ ) space, but still not the best solution.
#   * Could you devise a constant space solution?
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/17/mat1.jpg)
# 
#     
#     
#     Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
#     Output: [[1,0,1],[0,0,0],[1,0,1]]
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2020/08/17/mat2.jpg)
# 
#     
#     
#     Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
#     Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == matrix.length`
#   * `n == matrix[0].length`
#   * `1 <= m, n <= 200`
#   * `-231 <= matrix[i][j] <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
