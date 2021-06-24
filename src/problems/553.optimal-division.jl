# ---
# title: 553. Optimal Division
# id: problem553
# author: Indigo
# date: 2021-06-23
# difficulty: Medium
# categories: Math, String
# link: <https://leetcode.com/problems/optimal-division/description/>
# hidden: true
# ---
# 
# Given a list of **positive integers** , the adjacent integers will perform the
# float division. For example, [2,3,4] -> 2 / 3 / 4.
# 
# However, you can add any number of parenthesis at any position to change the
# priority of operations. You should find out how to add parenthesis to get the
# **maximum** result, and return the corresponding expression in string format.
# **Your expression should NOT contain redundant parenthesis.**
# 
# **Example:**  
# 
#     
#     
#     Input: [1000,100,10,2]
#     Output: "1000/(100/10/2)"
#     Explanation:
#     1000/(100/10/2) = 1000/((100/10)/2) = 200
#     However, the bold parenthesis in "1000/( **(** 100/10 **)** /2)" are redundant,   
#     since they don't influence the operation priority. So you should return "1000/(100/10/2)". 
#     
#     Other cases:
#     1000/(100/10)/2 = 50
#     1000/(100/(10/2)) = 50
#     1000/100/10/2 = 0.5
#     1000/100/(10/2) = 2
#     
# 
# **Note:**
# 
#   1. The length of the input array is [1, 10].
#   2. Elements in the given array will be in range [2, 1000].
#   3. There is only one optimal division for each test case.
# 
# 
## @lc code=start
using LeetCode

function optimal_division(nums::Vector{Int})
    (length(nums) == 1) && return string(nums[1])
    (length(nums) == 2) && return string(nums[1]) * "/" * string(nums[1])
    res = "$(nums[1])/($(nums[2])"
    for i in 3:length(nums)
        res *= "/$(nums[i])"
    end
    return res * ")"
end
## @lc code=end
