# ---
# title: 88. Merge Sorted Array
# id: problem88
# author: Tian Jun
# date: 2020-11-24
# difficulty: Easy
# categories: Array, Two Pointers
# link: <https://leetcode.com/problems/merge-sorted-array/description/>
# hidden: true
# ---
# 
# Given two sorted integer arrays _nums1_ and _nums2_ , merge _nums2_ into
# _nums1_ as one sorted array.
# 
# **Note:**
# 
#   * The number of elements initialized in _nums1_ and _nums2_ are _m_ and _n_ respectively.
#   * You may assume that _nums1_ has enough space (size that is  **equal** to _m_ \+ _n_ ) to hold additional elements from _nums2_.
# 
# **Example:**
# 
#     
#     
#     Input:
#     nums1 = [1,2,3,0,0,0], m = 3
#     nums2 = [2,5,6],       n = 3
#     
#     Output:  [1,2,2,3,5,6]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `-10^9 <= nums1[i], nums2[i] <= 10^9`
#   * `nums1.length == m + n`
#   * `nums2.length == n`
# 
# 
## @lc code=start
using LeetCode

function merge_sorted_array(
    nums1::AbstractVector{Int}, m::Int, nums2::AbstractVector{Int}, n::Int
)::Nothing
    i = m + n
    while m > 0 && n > 0
        if nums1[m] > nums2[n]
            nums1[i] = nums1[m]
            m -= 1
        else
            nums1[i] = nums2[n]
            n -= 1
        end
        i -= 1
    end

    while n > 0
        nums1[i] = nums2[n]
        n -= 1
        i -= 1
    end

    return nothing
end
## @lc code=end
