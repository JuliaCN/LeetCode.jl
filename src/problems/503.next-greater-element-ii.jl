# ---
# title: 503. Next Greater Element II
# id: problem503
# author: Indigo
# date: 2021-03-06
# difficulty: Medium
# categories: Stack
# link: <https://leetcode.com/problems/next-greater-element-ii/description/>
# hidden: true
# ---
# 
# Given a circular array (the next element of the last element is the first
# element of the array), print the Next Greater Number for every element. The
# Next Greater Number of a number x is the first greater number to its
# traversing-order next in the array, which means you could search circularly to
# find its next greater number. If it doesn't exist, output -1 for this number.
# 
# **Example 1:**  
# 
#     
#     
#     Input: [1,2,1]
#     Output: [2,-1,2]
#     Explanation: The first 1's next greater number is 2; The number 2 can't find next greater number; The second 1's next greater number needs to search circularly, which is also 2.
#     
# 
# **Note:** The length of given array won't exceed 10000.
# 
# 
## @lc code=start
using LeetCode

function next_greater_elements(nums::Vector{Int})
    stk = Int[]
    res = fill(-1, size(nums))
    for rd in 1:2, (idx, num) in enumerate(nums) 
        while !isempty(stk) && nums[stk[end]] < num
            res[pop!(stk)] = num
        end
        (rd == 1) && push!(stk, idx)
    end
    res
end
## @lc code=end
