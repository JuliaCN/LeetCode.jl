# ---
# title: 120. Triangle
# id: problem120
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Dynamic Programming
# link: <https://leetcode.com/problems/triangle/description/>
# hidden: true
# ---
# 
# Given a triangle, find the minimum path sum from top to bottom. Each step you
# may move to adjacent numbers on the row below.
# 
# For example, given the following triangle
# 
#     
#     
#     [
#          [ **2** ],
#         [ **3** ,4],
#        [6, **5** ,7],
#       [4, **1** ,8,3]
#     ]
#     
# 
# The minimum path sum from top to bottom is `11` (i.e., **2** \+ **3** \+ **5**
# \+ **1** = 11).
# 
# **Note:**
# 
# Bonus point if you are able to do this using only _O_ ( _n_ ) extra space,
# where _n_ is the total number of rows in the triangle.
# 
# 
## @lc code=start
using LeetCode

function minimum_total(triangle::Vector{Vector{Int}})
    length(triangle) == 1 && return triangle[1][1]
    dp = fill(0, length(triangle))
    tmp = dp[:]
    dp[1:2] = triangle[2] .+ triangle[1][1]
    for i in 3:length(triangle)
        tmp[1] = dp[1] + triangle[i][1]
        for j in 2:(i - 1)
            tmp[j] = min(dp[j], dp[j - 1]) + triangle[i][j]
        end
        tmp[i] = dp[i - 1] + triangle[i][i]
        tmp, dp = dp, tmp
    end
    return minimum(dp)
end
## @lc code=end
