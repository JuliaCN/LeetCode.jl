# ---
# title: 739. Daily Temperatures
# id: problem739
# author: Indigo
# date: 2021-01-28
# difficulty: Medium
# categories: Hash Table, Stack
# link: <https://leetcode.com/problems/daily-temperatures/description/>
# hidden: true
# ---
# 
# Given a list of daily temperatures `T`, return a list such that, for each day
# in the input, tells you how many days you would have to wait until a warmer
# temperature. If there is no future day for which this is possible, put `0`
# instead.
# 
# For example, given the list of temperatures `T = [73, 74, 75, 71, 69, 72, 76,
# 73]`, your output should be `[1, 1, 4, 2, 1, 1, 0, 0]`.
# 
# **Note:** The length of `temperatures` will be in the range `[1, 30000]`. Each
# temperature will be an integer in the range `[30, 100]`.
# 
# 
## @lc code=start
using LeetCode

function daily_temperatures(T::Vector{Int})
    res = fill(0, length(T))    
    stk = Int[]
    for i in 1:length(T)
        while !isempty(stk) && T[stk[end]] < T[i]
            res[stk[end]] = i - stk[end]
            pop!(stk)
        end
        push!(stk, i)
    end
    res
end
## @lc code=end
