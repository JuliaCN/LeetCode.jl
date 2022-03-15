# ---
# title: 169. Majority Element
# id: problem169
# author: zhwang
# date: 2022-03-10
# difficulty: Easy
# categories: Array, Divide and Conquer, Bit Manipulation
# link: <https://leetcode.com/problems/majority-element/description/>
# hidden: true
# ---
# 
# Given an array of size _n_ , find the majority element. The majority element
# is the element that appears **more than** `⌊ n/2 ⌋` times.
# 
# You may assume that the array is non-empty and the majority element always
# exist in the array.
# 
# **Example 1:**
# 
#     
#     
#     Input: [3,2,3]
#     Output: 3
# 
# **Example 2:**
# 
#     
#     
#     Input: [2,2,1,1,1,2,2]
#     Output: 2
#     
# 
# 
## @lc code=start
using LeetCode

function majority_element(nums::Vector{Int})::Int
    res = vote = 0
    for num in nums
        if vote == 0
            vote += 1
            res = num
        else
            vote += (res == num) ? 1 : -1
        end
    end
    return res
end
## @lc code=end
