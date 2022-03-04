# ---
# title: 496. Next Greater Element I
# id: problem496
# author: Indigo
# date: 2022-03-03
# difficulty: Easy
# categories: Stack
# link: <https://leetcode.com/problems/next-greater-element-i/description/>
# hidden: true
# ---
# 
# You are given two arrays **(without duplicates)** `nums1` and `nums2` where
# `nums1`’s elements are subset of `nums2`. Find all the next greater numbers
# for `nums1`'s elements in the corresponding places of `nums2`.
# 
# The Next Greater Number of a number **x** in `nums1` is the first greater
# number to its right in `nums2`. If it does not exist, output -1 for this
# number.
# 
# **Example 1:**  
# 
#     
#     
#     Input: **nums1** = [4,1,2], **nums2** = [1,3,4,2].
#     Output: [-1,3,-1]
#     Explanation:
#         For number 4 in the first array, you cannot find the next greater number for it in the second array, so output -1.
#         For number 1 in the first array, the next greater number for it in the second array is 3.
#         For number 2 in the first array, there is no next greater number for it in the second array, so output -1.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: **nums1** = [2,4], **nums2** = [1,2,3,4].
#     Output: [3,-1]
#     Explanation:
#         For number 2 in the first array, the next greater number for it in the second array is 3.
#         For number 4 in the first array, there is no next greater number for it in the second array, so output -1.
#     
# 
# **Note:**  
# 
#   1. All elements in `nums1` and `nums2` are unique.
#   2. The length of both `nums1` and `nums2` would not exceed 1000.
# 
# 
## @lc code=start
using LeetCode

function next_greater_element(num1::Vector{Int}, num2::Vector{Int})
    stk = Int[]
    res = fill(-1, length(num2))
    inv_idx = Dict{Int,Int}()
    for i in length(num2):-1:1
        inv_idx[num2[i]] = i
        while !isempty(stk) && stk[end] <= num2[i]
            pop!(stk)
        end
        res[i] = isempty(stk) ? -1 : stk[end]
        push!(stk, num2[i])
    end
    [res[inv_idx[item]] for item in num1]
end
## @lc code=end
