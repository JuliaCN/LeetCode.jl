# ---
# title: 502. IPO
# id: problem502
# author: Indigo
# date: 2021-09-08
# difficulty: Hard
# categories: Heap, Greedy
# link: <https://leetcode.com/problems/ipo/description/>
# hidden: true
# ---
# 
# Suppose LeetCode will start its IPO soon. In order to sell a good price of its
# shares to Venture Capital, LeetCode would like to work on some projects to
# increase its capital before the IPO. Since it has limited resources, it can
# only finish at most **k** distinct projects before the IPO. Help LeetCode
# design the best way to maximize its total capital after finishing at most
# **k** distinct projects.
# 
# You are given several projects. For each project **i** , it has a pure profit
# **P i** and a minimum capital of **C i** is needed to start the corresponding
# project. Initially, you have **W** capital. When you finish a project, you
# will obtain its pure profit and the profit will be added to your total
# capital.
# 
# To sum up, pick a list of at most **k** distinct projects from given projects
# to maximize your final capital, and output your final maximized capital.
# 
# **Example 1:**  
# 
#     
#     
#     Input: k=2, W=0, Profits=[1,2,3], Capital=[0,1,1].
#     
#     Output: 4
#     
#     Explanation: Since your initial capital is 0, you can only start the project indexed 0.
#                  After finishing it you will obtain profit 1 and your capital becomes 1.
#                  With capital 1, you can either start the project indexed 1 or the project indexed 2.
#                  Since you can choose at most 2 projects, you need to finish the project indexed 2 to get the maximum capital.
#                  Therefore, output the final maximized capital, which is 0 + 1 + 3 = 4.
#     
# 
# **Note:**  
# 
#   1. You may assume all numbers in the input are non-negative integers.
#   2. The length of Profits array and Capital array will not exceed 50,000.
#   3. The answer is guaranteed to fit in a 32-bit signed integer.
# 
# 
## @lc code=start
using LeetCode

using DataStructures
function find_maximized_capital(k::Int, w::Int, profits::Vector{Int}, capital::Vector{Int})
    arr = @view(collect(zip(capital, profits))[:])
    sort!(arr)
    hp = Int[]
    for _ in 1:k
        idx = searchsortedlast(arr, (w + 1, -1))
        for item in @view(arr[1:idx])
            heappush!(hp, -item[2])
        end
        arr = @view(arr[idx+1:end])
        w -= isempty(hp) ? 0 : hp[1]
    end
    w
end
## @lc code=end
