# ---
# title: 1438. Longest Continuous Subarray With Absolute Diff Less Than or Equal to Limit
# id: problem1438
# author: Qling
# date: 2021-02-21
# difficulty: Medium
# categories: Array, Sliding Window
# link: <https://leetcode.com/problems/longest-continuous-subarray-with-absolute-diff-less-than-or-equal-to-limit/description/>
# hidden: true
# ---
# 
# Given an array of integers `nums` and an integer `limit`, return the size of
# the longest **non-empty** subarray such that the absolute difference between
# any two elements of this subarray is less than or equal to `limit` _._
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [8,2,4,7], limit = 4
#     Output: 2 
#     Explanation: All subarrays are: 
#     [8] with maximum absolute diff |8-8| = 0 <= 4.
#     [8,2] with maximum absolute diff |8-2| = 6 > 4. 
#     [8,2,4] with maximum absolute diff |8-2| = 6 > 4.
#     [8,2,4,7] with maximum absolute diff |8-2| = 6 > 4.
#     [2] with maximum absolute diff |2-2| = 0 <= 4.
#     [2,4] with maximum absolute diff |2-4| = 2 <= 4.
#     [2,4,7] with maximum absolute diff |2-7| = 5 > 4.
#     [4] with maximum absolute diff |4-4| = 0 <= 4.
#     [4,7] with maximum absolute diff |4-7| = 3 <= 4.
#     [7] with maximum absolute diff |7-7| = 0 <= 4. 
#     Therefore, the size of the longest subarray is 2.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [10,1,2,4,7,2], limit = 5
#     Output: 4 
#     Explanation: The subarray [2,4,7,2] is the longest since the maximum absolute diff is |2-7| = 5 <= 5.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [4,2,2,2,4,4,2,2], limit = 0
#     Output: 3
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 10^5`
#   * `1 <= nums[i] <= 10^9`
#   * `0 <= limit <= 10^9`
# 
# 
## @lc code=start
using LeetCode, DataStructures

function longest_subarray(nums::Vector{Int}, limit::Int)
    queMin, queMax = Deque{Int}(), Deque{Int}()
    n = length(nums)
    left = right = 1
    res = 0

    while right <= n
        while !isempty(queMin) && !isempty(queMax) && last(queMax) < nums[right]
            pop!(queMax)
        end
        while !isempty(queMin) && !isempty(queMax) && last(queMin) > nums[right]
            pop!(queMin)
        end
        push!(queMax, nums[right])
        push!(queMin, nums[right])

        while !isempty(queMin) && !isempty(queMax) && first(queMax) - first(queMin) > limit
            if nums[left] == first(queMin)
                popfirst!(queMin)
            end
            if nums[left] == first(queMax)
                popfirst!(queMax)
            end
            left += 1
        end
        
        res = max(res, right - left + 1)
        right += 1
       
    end

    return res
end

## @lc code=end
