# ---
# title: 539. Minimum Time Difference
# id: problem539
# author: Indigo
# date: 2021-06-23
# difficulty: Medium
# categories: String
# link: <https://leetcode.com/problems/minimum-time-difference/description/>
# hidden: true
# ---
# 
# Given a list of 24-hour clock time points in **" HH:MM"** format, return _the
# minimum **minutes** difference between any two time-points in the list_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: timePoints = ["23:59","00:00"]
#     Output: 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: timePoints = ["00:00","23:59","00:00"]
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= timePoints <= 2 * 104`
#   * `timePoints[i]` is in the format **" HH:MM"**.
# 
# 
## @lc code=start
using LeetCode

function find_min_difference(time_points::Vector{String})
    ttp = Tuple{Int, Int}[]    
    for t in time_points
        st = split(t, ':')
        push!(ttp, (parse(Int, st[1]), parse(Int, st[2])))
    end
    sort!(ttp)
    push!(ttp, (ttp[1][1] + 24, ttp[1][2]))
    return minimum((ttp[i][1] - ttp[i-1][1]) * 60 + (ttp[i][2] - ttp[i-1][2]) for i in 2:length(ttp))
end
## @lc code=end
