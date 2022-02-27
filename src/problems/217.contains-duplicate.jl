# ---
# title: 217. Contains Duplicate
# id: problem217
# author: zhwang
# date: 2022-02-10
# difficulty: Easy
# categories: Array, Hash Table
# link: <https://leetcode.com/problems/contains-duplicate/description/>
# hidden: true
# ---
# 
# Given an array of integers, find if the array contains any duplicates.
# 
# Your function should return true if any value appears at least twice in the
# array, and it should return false if every element is distinct.
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,2,3,1]
#     Output: true
# 
# **Example 2:**
# 
#     
#     
#     Input: [1,2,3,4]
#     Output: false
# 
# **Example 3:**
# 
#     
#     
#     Input: [1,1,1,3,3,4,3,2,4,2]
#     Output: true
# 
# 
## @lc code=start
using LeetCode

function contains_duplicate(nums::Vector{Int})::Bool
    hash_table = Int[]
    for i in nums
        !(i in hash_table) ? push!(hash_table, i) : return true
    end
    return false
end
## @lc code=end
