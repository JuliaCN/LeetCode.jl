"""
@lc app=leetcode id=4 lang=python3

[4] Median of Two Sorted Arrays

https://leetcode.com/problems/median-of-two-sorted-arrays/description/

algorithms
Hard (28.09%)
Likes:    5722
Dislikes: 857
Total Accepted:    574.5K
Total Submissions: 2M
Testcase Example:  '[1,3]\n[2]'

There are two sorted arrays nums1 and nums2 of size m and n respectively.

Find the median of the two sorted arrays. The overall run time complexity
should be O(log (m+n)).

You may assume nums1 and nums2 cannot be both empty.

Example 1:


nums1 = [1, 3]
nums2 = [2]

The median is 2.0


Example 2:


nums1 = [1, 2]
nums2 = [3, 4]

The median is (2 + 3)/2 = 2.5




@lc code=start
"""
function find_median_sorted_arrays(nums1::Vector{Int}, nums2::Vector{Int})::Float64
    n = length(nums1) + length(nums2)
    if isodd(n)
        nth(nums1, nums2, n ÷ 2 + 1)
    else
        (nth(nums1, nums2, n ÷ 2) + nth(nums1, nums2, n ÷ 2 + 1)) / 2
    end
end

function nth(a, b, k)
    if isempty(a)
        b[k]
    elseif isempty(b)
        a[k]
    else
        ia, ib = cld(length(a), 2), cld(length(b), 2)
        ma, mb = a[ia], b[ib]
        if ia + ib <= k
            if ma > mb
                # we can safely ignore the first half in b
                nth(a, @view(b[(ib + 1):end]), k - ib)
            else
                nth(@view(a[(ia + 1):end]), b, k - ia)
            end
        else
            if ma > mb
                nth(@view(a[1:(ia - 1)]), b, k)
            else
                nth(a, @view(b[1:(ib - 1)]), k)
            end
        end
    end
end
