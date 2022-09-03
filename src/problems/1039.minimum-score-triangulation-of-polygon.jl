# ---
# title: 1039. Minimum Score Triangulation of Polygon
# id: problem1039
# author: Indigo
# date: 2022-08-31
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/minimum-score-triangulation-of-polygon/description/>
# hidden: true
# ---
# 
# Given `N`, consider a convex `N`-sided polygon with vertices labelled `A[0],
# A[i], ..., A[N-1]` in clockwise order.
# 
# Suppose you triangulate the polygon into `N-2` triangles.  For each triangle,
# the value of that triangle is the **product**  of the labels of the vertices,
# and the _total score_ of the triangulation is the sum of these values over all
# `N-2` triangles in the triangulation.
# 
# Return the smallest possible total score that you can achieve with some
# triangulation of the polygon.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,2,3]
#     Output: 6
#     Explanation: The polygon is already triangulated, and the score of the only triangle is 6.
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2019/05/01/minimum-score-
# triangulation-of-polygon-1.png)
# 
#     
#     
#     Input: [3,7,4,5]
#     Output: 144
#     Explanation: There are two triangulations, with possible scores: 3*7*5 + 4*5*7 = 245, or 3*4*5 + 3*4*7 = 144.  The minimum score is 144.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: [1,3,1,4,1,5]
#     Output: 13
#     Explanation: The minimum score triangulation has score 1*1*3 + 1*1*4 + 1*1*5 + 1*1*1 = 13.
#     
# 
# 
# 
# **Note:**
# 
#   1. `3 <= A.length <= 50`
#   2. `1 <= A[i] <= 100`
# 
# 
## @lc code=start
using LeetCode

function min_score_triangulation(values::Vector{Int})
    dp = fill(0, 50, 50)
    function dfs!(dp, i, j)
        j - i < 2 && return 0
        dp[i, j] > 0 && return dp[i, j]
        j - i == 2 && (return dp[i, j] = values[i] * values[i + 1] * values[j])
        v = values[i] * values[j]
        dp[i, j] = minimum(v * values[k] + dfs!(dp, i, k) + dfs!(dp, k, j) for k in i + 1:j - 1)
    end
    dfs!(dp, 1, length(values))
end
## @lc code=end
