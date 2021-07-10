# ---
# title: 645. Set Mismatch
# id: problem645
# author: Indigo
# date: 2021-07-04
# difficulty: Easy
# categories: Hash Table, Math
# link: <https://leetcode.com/problems/set-mismatch/description/>
# hidden: true
# ---
# 
# The set `S` originally contains numbers from 1 to `n`. But unfortunately, due
# to the data error, one of the numbers in the set got duplicated to **another**
# number in the set, which results in repetition of one number and loss of
# another number.
# 
# Given an array `nums` representing the data status of this set after the
# error. Your task is to firstly find the number occurs twice and then find the
# number that is missing. Return them in the form of an array.
# 
# **Example 1:**  
# 
#     
#     
#     Input: nums = [1,2,2,4]
#     Output: [2,3]
#     
# 
# **Note:**  
# 
#   1. The given array size will in the range [2, 10000].
#   2. The given array's numbers won't have any order.
# 
# 
## @lc code=start
using LeetCode

function find_error_nums(nums::Vector{Int})
    cnt = fill(0x0, length(nums))
    for num in nums
        cnt[num] += 1
    end
    return findfirst(==(0x2), cnt), findfirst(==(0x0), cnt)
end
## @lc code=end
