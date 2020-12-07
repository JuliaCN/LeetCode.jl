# ---
# title: 1337. The K Weakest Rows in a Matrix
# id: problem1337
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array, Binary Search
# link: <https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/description/>
# hidden: true
# ---
# 
# Given a `m * n` matrix `mat` of _ones_  (representing soldiers) and _zeros_
# (representing civilians), return the indexes of the `k` weakest rows in the
# matrix ordered from the weakest to the strongest.
# 
# A row _**i**_ is weaker than row _**j**_ , if the number of soldiers in row
# _**i**_ is less than the number of soldiers in row _**j**_ , or they have the
# same number of soldiers but _**i**_ is less than _**j**_. Soldiers are
# **always** stand in the frontier of a row, that is, always _ones_  may appear
# first and then _zeros_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: mat = 
#     [[1,1,0,0,0],
#      [1,1,1,1,0],
#      [1,0,0,0,0],
#      [1,1,0,0,0],
#      [1,1,1,1,1]], 
#     k = 3
#     Output: [2,0,3]
#     Explanation: 
#     The number of soldiers for each row is: 
#     row 0 -> 2 
#     row 1 -> 4 
#     row 2 -> 1 
#     row 3 -> 2 
#     row 4 -> 5 
#     Rows ordered from the weakest to the strongest are [2,0,3,1,4]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: mat = 
#     [[1,0,0,0],
#      [1,1,1,1],
#      [1,0,0,0],
#      [1,0,0,0]], 
#     k = 2
#     Output: [0,2]
#     Explanation: 
#     The number of soldiers for each row is: 
#     row 0 -> 1 
#     row 1 -> 4 
#     row 2 -> 1 
#     row 3 -> 1 
#     Rows ordered from the weakest to the strongest are [0,2,3,1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `m == mat.length`
#   * `n == mat[i].length`
#   * `2 <= n, m <= 100`
#   * `1 <= k <= m`
#   * `matrix[i][j]` is either 0 **or** 1.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
