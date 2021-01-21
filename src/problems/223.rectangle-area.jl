# ---
# title: 223. Rectangle Area
# id: problem223
# author: Indigo
# date: 2021-01-21
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/rectangle-area/description/>
# hidden: true
# ---
# 
# Find the total area covered by two **rectilinear** rectangles in a **2D**
# plane.
# 
# Each rectangle is defined by its bottom left corner and top right corner as
# shown in the figure.
# 
# ![Rectangle
# Area](https://assets.leetcode.com/uploads/2018/10/22/rectangle_area.png)
# 
# **Example:**
# 
#     
#     
#     Input: A = -3, B = 0, C = 3, D = 4, E = 0, F = -1, G = 9, H = 2
#     Output: 45
# 
# **Note:**
# 
# Assume that the total area is never beyond the maximum possible value of
# **int**.
# 
# 
## @lc code=start
using LeetCode

function compute_area(coord::Vector{Int})
    if coord[1] > coord[5]
        coord[1:4], coord[5:8] = coord[5:8], coord[1:4]
    end
    if coord[8] <= coord[2] || coord[6] >= coord[4] || coord[5] >= coord[3]
        return 0
    end
    return (coord[3] - coord[1]) * (coord[4] - coord[2]) + 
            (coord[7] - coord[5]) * (coord[8] - coord[6]) -
            (min(coord[3], coord[7]) - coord[5]) * (min(coord[8], coord[4]) - max(coord[2], coord[6]))
end
## @lc code=end
