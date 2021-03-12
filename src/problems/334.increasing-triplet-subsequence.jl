# ---
# title: 334. Increasing Triplet Subsequence
# id: problem334
# author: Indigo
# date: 2021-03-12
# difficulty: Medium
# categories: 
# link: <https://leetcode.com/problems/increasing-triplet-subsequence/description/>
# hidden: true
# ---
# 
# Given an unsorted array return whether an increasing subsequence of length 3
# exists or not in the array.
# 
# Formally the function should:
# 
# > Return true if there exists _i, j, k_  
# >  such that _arr[i]_ < _arr[j]_ < _arr[k]_ given 0 ≤ _i_ < _j_ < _k_ ≤ _n_ -1
# > else return false.
# 
# **Note:** Your algorithm should run in O( _n_ ) time complexity and O( _1_ )
# space complexity.
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,2,3,4,5]
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [5,4,3,2,1]
#     Output: false
#     
# 
# 
## @lc code=start
using LeetCode

function increasing_triplet(nums::Vector{Int})
    fst_min = scd_min = nums[1]
    len = length(nums)
    idx = 2
    while idx <= len
        (nums[idx] != fst_min) && break
        idx += 1
    end
    (idx >= len) && return false
    fst_min, scd_min = minmax(fst_min, nums[idx])
    for num in @view(nums[(idx + 1):end])
        (num > scd_min) && return true
        scd_min = num
        fst_min, scd_min = minmax(fst_min, scd_min)
    end
    return false
end
## @lc code=end
