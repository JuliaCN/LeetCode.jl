# ---
# title: 1037. Valid Boomerang
# id: problem1037
# author: Indigo
# date: 2022-08-31
# difficulty: Easy
# categories: Math
# link: <https://leetcode.com/problems/valid-boomerang/description/>
# hidden: true
# ---
# 
# A _boomerang_ is a set of 3 points that are all distinct and **not** in a
# straight line.
# 
# Given a list of three points in the plane, return whether these points are a
# boomerang.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [[1,1],[2,3],[3,2]]
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [[1,1],[2,2],[3,3]]
#     Output: false
# 
# 
# 
# **Note:**
# 
#   1. `points.length == 3`
#   2. `points[i].length == 2`
#   3. `0 <= points[i][j] <= 100`
# 
# 
# 
# 
## @lc code=start
using LeetCode

function is_boomerang(points::Vector{Vector{Int}})
    p1, p2, p3 = points
    return (p1[1] - p2[1]) * (p1[2] - p3[2]) != (p1[1] - p3[1]) * (p1[2] - p2[2])
end
## @lc code=end
