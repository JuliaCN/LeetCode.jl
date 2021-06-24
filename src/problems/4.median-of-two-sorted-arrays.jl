# ---
# title: 4. Median of Two Sorted Arrays
# id: problem4
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Array, Binary Search, Divide and Conquer
# link: <https://leetcode.com/problems/median-of-two-sorted-arrays/description/>
# hidden: true
# ---
# 
# Given two sorted arrays `nums1` and `nums2` of size `m` and `n` respectively,
# return **the median** of the two sorted arrays.
# 
# **Follow up:** The overall run time complexity should be `O(log (m+n))`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums1 = [1,3], nums2 = [2]
#     Output: 2.00000
#     Explanation: merged array = [1,2,3] and median is 2.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums1 = [1,2], nums2 = [3,4]
#     Output: 2.50000
#     Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums1 = [0,0], nums2 = [0,0]
#     Output: 0.00000
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: nums1 = [], nums2 = [1]
#     Output: 1.00000
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: nums1 = [2], nums2 = []
#     Output: 2.00000
#     
# 
# 
# 
# **Constraints:**
# 
#   * `nums1.length == m`
#   * `nums2.length == n`
#   * `0 <= m <= 1000`
#   * `0 <= n <= 1000`
#   * `1 <= m + n <= 2000`
#   * `-106 <= nums1[i], nums2[i] <= 106`
# 
# 
## @lc code=start
using LeetCode

function find_median_sorted_arrays(nums1::Vector{Int}, nums2::Vector{Int})::Float64
    n = length(nums1) + length(nums2)
    isodd(n) ? nth(nums1, nums2, n ÷ 2 + 1) :
    (nth(nums1, nums2, n ÷ 2) + nth(nums1, nums2, n ÷ 2 + 1)) / 2
end

function nth(a, b, k)
    isempty(a) && return b[k]
    isempty(b) && return a[k]
    ia, ib = cld(length(a), 2), cld(length(b), 2)
    ma, mb = a[ia], b[ib]
    if ia + ib <= k
        ma > mb ? nth(a, @view(b[(ib + 1):end]), k - ib) : ## we can safely ignore the first half in b
        nth(@view(a[(ia + 1):end]), b, k - ia)
    else
        ma > mb ? nth(@view(a[1:(ia - 1)]), b, k) : nth(a, @view(b[1:(ib - 1)]), k)
    end
end
## @lc code=end
