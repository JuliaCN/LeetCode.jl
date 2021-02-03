# ---
# title: 1232. Check If It Is a Straight Line
# id: problem1232
# author: Indigo
# date: 2021-01-17
# difficulty: Easy
# categories: Array, Math, Geometry
# link: <https://leetcode.com/problems/check-if-it-is-a-straight-line/description/>
# hidden: true
# ---
# 
# You are given an array `coordinates`, `coordinates[i] = [x, y]`, where `[x,
# y]` represents the coordinate of a point. Check if these points make a
# straight line in the XY plane.
# 
# 
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2019/10/15/untitled-diagram-2.jpg)
# 
#     
#     
#     Input: coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
#     Output: true
#     
# 
# **Example 2:**
# 
# **![](https://assets.leetcode.com/uploads/2019/10/09/untitled-diagram-1.jpg)**
# 
#     
#     
#     Input: coordinates = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= coordinates.length <= 1000`
#   * `coordinates[i].length == 2`
#   * `-10^4 <= coordinates[i][0], coordinates[i][1] <= 10^4`
#   * `coordinates` contains no duplicate point.
# 
# 
## @lc code=start
using LeetCode

function check_straight_line(coordinates::Vector{Vector{Int}})::Bool
    coordinates .-= Ref(coordinates[1])
    slope = coordinates[2][1]//coordinates[2][2]
    for i in 3:length(coordinates)
        (coordinates[i][1]//coordinates[i][2] != slope) && (return false)
    end
    return true
end
## @lc code=end
