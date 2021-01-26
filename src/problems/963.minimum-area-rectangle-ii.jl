# ---
# title: 963. Minimum Area Rectangle II
# id: problem963
# author: Indigo
# date: 2021-01-25
# difficulty: Medium
# categories: Math, Geometry
# link: <https://leetcode.com/problems/minimum-area-rectangle-ii/description/>
# hidden: true
# ---
# 
# Given a set of points in the xy-plane, determine the minimum area of **any**
# rectangle formed from these points, with sides **not necessarily parallel** to
# the x and y axes.
# 
# If there isn't any rectangle, return 0.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2018/12/21/1a.png)
# 
#     
#     
#     Input: [[1,2],[2,1],[1,0],[0,1]]
#     Output: 2.00000
#     Explanation: The minimum area rectangle occurs at [1,2],[2,1],[1,0],[0,1], with an area of 2.
#     
# 
# **Example 2:**
# 
# ![](https://assets.leetcode.com/uploads/2018/12/22/2.png)
# 
#     
#     
#     Input: [[0,1],[2,1],[1,1],[1,0],[2,0]]
#     Output: 1.00000
#     Explanation: The minimum area rectangle occurs at [1,0],[1,1],[2,1],[2,0], with an area of 1.
#     
# 
# **Example 3:**
# 
# ![](https://assets.leetcode.com/uploads/2018/12/22/3.png)
# 
#     
#     
#     Input: [[0,3],[1,2],[3,1],[1,3],[2,1]]
#     Output: 0
#     Explanation: There is no possible rectangle to form from these points.
#     
# 
# **Example 4:**
# 
# ![](https://assets.leetcode.com/uploads/2018/12/21/4c.png)
# 
#     
#     
#     Input: [[3,1],[1,1],[0,1],[2,1],[3,3],[3,2],[0,2],[2,3]]
#     Output: 2.00000
#     Explanation: The minimum area rectangle occurs at [2,1],[2,3],[3,3],[3,1], with an area of 2.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= points.length <= 50`
#   2. `0 <= points[i][0] <= 40000`
#   3. `0 <= points[i][1] <= 40000`
#   4. All points are distinct.
#   5. Answers within `10^-5` of the actual value will be accepted as correct.
# 
# 
## @lc code=start
using LeetCode

function min_area_free_rect(points::Vector{Vector{Int}})
    function is_right_angle(p1, p2, p3)
        return (p1[1] - p2[1]) * (p1[1] - p3[1]) + (p1[2] - p2[2]) * (p1[2] - p3[2]) == 0
    end
    point_set = Set(points)
    res, len = Inf, length(points)
    for i in 1 : len 
        for j in 1 + i : len
            for k in 1 + j : len
                flg = false
                if is_right_angle(points[i], points[j], points[k])
                    flg = true
                elseif is_right_angle(points[j], points[k], points[i])
                    flg = true
                    i, j = j, i
                elseif is_right_angle(points[k], points[i], points[j])
                    i, k = k, i
                    flg = true
                end
                if flg && (points[j] + points[k] - points[i]) in point_set
                    area = sqrt(sum((points[i] - points[j]) .^ 2) * sum((points[i] - points[k]) .^ 2))
                    (area > 0) && (res = min(res, area))
                end
            end     
        end
    end    
    (res == Inf) ? 0.0 : res
end
## @lc code=end
