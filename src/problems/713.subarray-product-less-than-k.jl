# ---
# title: 713. Subarray Product Less Than K
# id: problem713
# author: Indigo
# date: 2021-06-29
# difficulty: Medium
# categories: Array, Two Pointers
# link: <https://leetcode.com/problems/subarray-product-less-than-k/description/>
# hidden: true
# ---
# 
# Your are given an array of positive integers `nums`.
# 
# Count and print the number of (contiguous) subarrays where the product of all
# the elements in the subarray is less than `k`.
# 
# **Example 1:**  
# 
#     
#     
#     Input: nums = [10, 5, 2, 6], k = 100
#     Output: 8
#     Explanation: The 8 subarrays that have product less than 100 are: [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6].
#     Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.
#     
# 
# **Note:**
# 
# * `0 < nums.length <= 50000`.
# * `0 < nums[i] < 1000`.
# * `0 <= k < 10^6`.
# 
# 
## @lc code=start
using LeetCode

function num_subarray_productLess_than_k(nums::Vector{Int}, k::Int)
    k <= 1 && return 0
    res, left = 0, 1
    p = 1
    for (right, val) in enumerate(nums)
        p *= val
        while p >= k
            p ÷= nums[left]
            left += 1
        end
        res += right - left + 1
    end
    return res
end
## @lc code=end
