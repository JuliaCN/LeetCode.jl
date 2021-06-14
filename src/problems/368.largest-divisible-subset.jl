# ---
# title: 368. Largest Divisible Subset
# id: problem368
# author: Indigo
# date: 2021-06-14
# difficulty: Medium
# categories: Math, Dynamic Programming
# link: <https://leetcode.com/problems/largest-divisible-subset/description/>
# hidden: true
# ---
# 
# Given a set of **distinct** positive integers, find the largest subset such
# that every pair (Si, Sj) of elements in this subset satisfies:
# 
# Si % Sj = 0 or Sj % Si = 0.
# 
# If there are multiple solutions, return any subset is fine.
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,2,3]
#     Output: [1,2] (of course, [1,3] will also be ok)
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [1,2,4,8]
#     Output: [1,2,4,8]
#     
# 
# 
## @lc code=start
using LeetCode

function largest_divisible_subset(nums::Vector{Int})
    sort!(nums)
    len = length(nums)
    dp = fill(1, len)
    prev = fill(0, len)
    for i in 2:len, j in 1:(i - 1)
        if nums[i] % nums[j] == 0 && dp[i] < dp[j] + 1
            dp[i] = dp[j] + 1
            prev[i] = j
        end
    end
    idx = argmax(dp)
    res =  Int[]
    while idx != 0
        push!(res, nums[idx])
        idx = prev[idx]
    end
    return res
end
## @lc code=end
