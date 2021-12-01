# ---
# title: 1089. Duplicate Zeros
# id: problem1089
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/duplicate-zeros/description/>
# hidden: true
# ---
# 
# Given a fixed length array `arr` of integers, duplicate each occurrence of
# zero, shifting the remaining elements to the right.
# 
# Note that elements beyond the length of the original array are not written.
# 
# Do the above modifications to the input array **in place** , do not return
# anything from your function.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,0,2,3,0,4,5,0]
#     Output: null
#     Explanation: After calling your function, the **input** array is modified to: [1,0,0,2,3,0,0,4]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [1,2,3]
#     Output: null
#     Explanation: After calling your function, the **input** array is modified to: [1,2,3]
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= arr.length <= 10000`
#   2. `0 <= arr[i] <= 9`
# 
# 
## @lc code=start
using LeetCode

function duplicate_zeros!(arr::Vector{Int})
    len = length(arr)
    for i in reverse(eachindex(arr))
        iszero(arr[i]) && insert!(arr, i, 0)
    end
    resize!(arr, len)
    nothing
end

## add your code here:
## @lc code=end
