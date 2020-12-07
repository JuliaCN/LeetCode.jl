# ---
# title: 835. Image Overlap
# id: problem835
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/image-overlap/description/>
# hidden: true
# ---
# 
# You are given two images `img1` and `img2` both of size `n x n`, represented
# as binary, square matrices of the same size. (A binary matrix has only 0s and
# 1s as values.)
# 
# We translate one image however we choose (sliding it left, right, up, or down
# any number of units), and place it on top of the other image.  After, the
# _overlap_ of this translation is the number of positions that have a 1 in both
# images.
# 
# (Note also that a translation does **not** include any kind of rotation.)
# 
# What is the largest possible overlap?
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/09/09/overlap1.jpg)
# 
#     
#     
#     Input: img1 = [[1,1,0],[0,1,0],[0,1,0]], img2 = [[0,0,0],[0,1,1],[0,0,1]]
#     Output: 3
#     Explanation: We slide img1 to right by 1 unit and down by 1 unit.
#     ![](https://assets.leetcode.com/uploads/2020/09/09/overlap_step1.jpg)
#     The number of positions that have a 1 in both images is 3. (Shown in red)
#     ![](https://assets.leetcode.com/uploads/2020/09/09/overlap_step2.jpg)
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: img1 = [[1]], img2 = [[1]]
#     Output: 1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: img1 = [[0]], img2 = [[0]]
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `n == img1.length`
#   * `n == img1[i].length`
#   * `n == img2.length `
#   * `n == img2[i].length`
#   * `1 <= n <= 30`
#   * `img1[i][j]` is `0` or `1`.
#   * `img2[i][j]` is `0` or `1`.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
