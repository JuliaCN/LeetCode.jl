# ---
# title: 1029. Two City Scheduling
# id: problem1029
# author: Indigo
# date: 2021-07-31
# difficulty: Medium
# categories: Greedy
# link: <https://leetcode.com/problems/two-city-scheduling/description/>
# hidden: true
# ---
# 
# A company is planning to interview `2n` people. Given the array `costs` where
# `costs[i] = [aCosti, bCosti]`, the cost of flying the `ith` person to city `a`
# is `aCosti`, and the cost of flying the `ith` person to city `b` is `bCosti`.
# 
# Return _the minimum cost to fly every person to a city_ such that exactly `n`
# people arrive in each city.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: costs = [[10,20],[30,200],[400,50],[30,20]]
#     Output: 110
#     Explanation:
#     The first person goes to city A for a cost of 10.
#     The second person goes to city A for a cost of 30.
#     The third person goes to city B for a cost of 50.
#     The fourth person goes to city B for a cost of 20.
#     
#     The total minimum cost is 10 + 30 + 50 + 20 = 110 to have half the people interviewing in each city.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: costs = [[259,770],[448,54],[926,667],[184,139],[840,118],[577,469]]
#     Output: 1859
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: costs = [[515,563],[451,713],[537,709],[343,819],[855,779],[457,60],[650,359],[631,42]]
#     Output: 3086
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 * n == costs.length`
#   * `2 <= costs.length <= 100`
#   * `costs.length` is even.
#   * `1 <= aCosti, bCosti <= 1000`
# 
# 
## @lc code=start
using LeetCode

function two_city_sched_cost(costs::Vector{Vector{Int}})::Int    
    sort!(costs; by = x -> x[1] - x[2])
    n = length(costs) ÷ 2
    res = 0
    for i in 1:n
        res += costs[i][1] + costs[i + n][2]
    end
    res
end
## @lc code=end
