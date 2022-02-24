# ---
# title: 350. Intersection of Two Arrays II
# id: problem350
# author: zhwang
# date: 2022-01-19
# difficulty: Easy
# categories: Hash Table, Two Pointers, Binary Search, Sort
# link: <https://leetcode.com/problems/intersection-of-two-arrays-ii/description/>
# hidden: true
# ---
# 
# Given two arrays, write a function to compute their intersection.
# 
# **Example 1:**
# 
#     
#     
#     Input: nums1 = [1,2,2,1], nums2 = [2,2]
#     Output: [2,2]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
#     Output: [4,9]
# 
# **Note:**
# 
#   * Each element in the result should appear as many times as it shows in both arrays.
#   * The result can be in any order.
# 
# **Follow up:**
# 
#   * What if the given array is already sorted? How would you optimize your algorithm?
#   * What if _nums1_ 's size is small compared to _nums2_ 's size? Which algorithm is better?
#   * What if elements of _nums2_ are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
# 
# 
## @lc code=start
using LeetCode

function intersection_of_arrays(nums1::Vector{Int}, nums2::Vector{Int})::Vector{Int}
    nums1, nums2 = sort(nums1), sort(nums2)
    n1, n2 = length(nums1), length(nums2)
    i1, i2, res = 1, 1, Int[]
    while i1 <= n1 && i2 <= n2
        if nums1[i1] > nums2[i2]
            i2 += 1
        elseif nums1[i1] < nums2[i2]
            i1 += 1
        else
            push!(res, nums1[i1])
            i1 += 1
            i2 += 1
        end
    end
    return res
end

## @lc code=end
