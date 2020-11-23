"""
@lc app=leetcode id=88 lang=python3

[88] Merge Sorted Array

https://leetcode.com/problems/merge-sorted-array/description/

algorithms
Easy (37.77%)
Likes:    2885
Dislikes: 4635
Total Accepted:    713K
Total Submissions: 1.8M
Testcase Example:  '[1,2,3,0,0,0]\n3\n[2,5,6]\n3'

Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as
one sorted array.

Note:


The number of elements initialized in nums1 and nums2 are m and n
respectively.
You may assume that nums1 has enough space (size that is equal to m + n) to
hold additional elements from nums2.


Example:


Input:
nums1 = [1,2,3,0,0,0], m = 3
nums2 = [2,5,6],       n = 3

Output: [1,2,2,3,5,6]



Constraints:


-10^9 <= nums1[i], nums2[i] <= 10^9
nums1.length == m + n
nums2.length == n




@lc code=start
"""
function merge_sorted_array(nums1::AbstractVector{Int}, m::Int, nums2::AbstractVector{Int}, n::Int)::Nothing
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
    end

    nothing
end
# @lc code=end
