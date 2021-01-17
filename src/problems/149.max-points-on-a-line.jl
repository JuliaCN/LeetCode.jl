# ---
# title: 149. Max Points on a Line
# id: problem149
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Hash Table, Math
# link: <https://leetcode.com/problems/max-points-on-a-line/description/>
# hidden: true
# ---
# 
# Given _n_ points on a 2D plane, find the maximum number of points that lie on
# the same straight line.
# 
# **Example 1:**
# 
#     
#     
#     Input: [[1,1],[2,2],[3,3]]
#     Output: 3
#     Explanation:
#     ^
#     |
#     |        o
#     |     o
#     |  o  
#     +------------->
#     0  1  2  3  4
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [[1,1],[3,2],[5,3],[4,1],[2,3],[1,4]]
#     Output: 4
#     Explanation:
#     ^
#     |
#     |  o
#     |     o        o
#     |        o
#     |  o        o
#     +------------------->
#     0  1  2  3  4  5  6
#     
# 
# **NOTE:**  input types have been changed on April 15, 2019. Please reset to
# default code definition to get new method signature.
# 
# 
## @lc code=start
using LeetCode
function max_points(points::Vector{Vector{Int}})
    res = 0
    for i in 1:length(points)
        if res > length(points) - i 
            return res
        end
        cnt = DefaultDict{Rational, Int}(1)
        for j in i+1:length(points)
            cnt[(points[i][2] - points[j][2]) // (points[i][1] - points[j][1])] += 1
        end
        res = max(res, maximum(p.second for p in cnt))
    end    
    res
end
## @lc code=end
