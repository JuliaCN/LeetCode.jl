# ---
# title: 697. Degree of an Array
# id: problem697
# author: Indigo
# date: 2021-02-20
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/degree-of-an-array/description/>
# hidden: true
# ---
# 
# Given a non-empty array of non-negative integers `nums`, the **degree** of
# this array is defined as the maximum frequency of any one of its elements.
# 
# Your task is to find the smallest possible length of a (contiguous) subarray
# of `nums`, that has the same degree as `nums`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,2,2,3,1]
#     Output: 2
#     Explanation: 
#     The input array has a degree of 2 because both elements 1 and 2 appear twice.
#     Of the subarrays that have the same degree:
#     [1, 2, 2, 3, 1], [1, 2, 2, 3], [2, 2, 3, 1], [1, 2, 2], [2, 2, 3], [2, 2]
#     The shortest length is 2. So return 2.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [1,2,2,3,1,4,2]
#     Output: 6
#     Explanation: 
#     The degree is 3 because the element 2 is repeated 3 times.
#     So [2,2,3,1,4,2] is the shortest subarray, therefore returning 6.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `nums.length` will be between 1 and 50,000.
#   * `nums[i]` will be an integer between 0 and 49,999.
# 
# 
## @lc code=start
using LeetCode

function find_shortest_sub_array(nums::Vector{Int})
    mp = Dict{Int,Vector{Int}}()

    for (idx, num) in enumerate(nums)
        if num in keys(mp)
            mp[num][1] += 1
            mp[num][3] = idx
        else
            mp[num] = [1, idx, idx]
        end
    end
    maxn = minlen = 0
    for (cnt, l, r) in values(mp)
        if maxn < cnt
            maxn = cnt
            minlen = r - l + 1
        elseif maxn == cnt
            minlen = min(minlen, r - l + 1)
        end
    end
    minlen
end
## @lc code=end
