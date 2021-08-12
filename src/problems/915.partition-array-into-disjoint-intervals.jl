# ---
# title: 915. Partition Array into Disjoint Intervals
# id: problem915
# author: Indigo
# date: 2021-07-12
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/partition-array-into-disjoint-intervals/description/>
# hidden: true
# ---
# 
# Given an array `A`, partition it into two (contiguous) subarrays `left` and
# `right` so that:
# 
#   * Every element in `left` is less than or equal to every element in `right`.
#   * `left` and `right` are non-empty.
#   * `left` has the smallest possible size.
# 
# Return the **length** of `left` after such a partitioning.  It is guaranteed
# that such a partitioning exists.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [5,0,3,8,6]
#     Output: 3
#     Explanation: left = [5,0,3], right = [8,6]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [1,1,1,0,6,12]
#     Output: 4
#     Explanation: left = [1,1,1,0], right = [6,12]
#     
# 
# 
# 
# **Note:**
# 
#   1. `2 <= A.length <= 30000`
#   2. `0 <= A[i] <= 10^6`
#   3. It is guaranteed there is at least one way to partition `A` as described.
# 
# 
# 
# 
## @lc code=start
using LeetCode

function partition_disjoint(nums::Vector{Int})
    n, pos = length(nums), 0
    maxn = leftm = nums[1]
    for i in 2:n
        maxn = max(maxn, nums[i])
        if nums[i] < leftm
            leftm = maxn
            pos = i
        end
    end
    return pos
end
## @lc code=end
