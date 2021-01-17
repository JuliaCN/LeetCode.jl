# ---
# title: 228. Summary Ranges
# id: problem228
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/summary-ranges/description/>
# hidden: true
# ---
# 
# You are given a **sorted unique** integer array `nums`.
# 
# Return _the **smallest sorted** list of ranges that **cover all the numbers in
# the array exactly**_. That is, each element of `nums` is covered by exactly
# one of the ranges, and there is no integer `x` such that `x` is in one of the
# ranges but not in `nums`.
# 
# Each range `[a,b]` in the list should be output as:
# 
#   * `"a->b"` if `a != b`
#   * `"a"` if `a == b`
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [0,1,2,4,5,7]
#     Output: ["0->2","4->5","7"]
#     Explanation: The ranges are:
#     [0,2] --> "0->2"
#     [4,5] --> "4->5"
#     [7,7] --> "7"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [0,2,3,4,6,8,9]
#     Output: ["0","2->4","6","8->9"]
#     Explanation: The ranges are:
#     [0,0] --> "0"
#     [2,4] --> "2->4"
#     [6,6] --> "6"
#     [8,9] --> "8->9"
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = []
#     Output: []
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: nums = [-1]
#     Output: ["-1"]
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: nums = [0]
#     Output: ["0"]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= nums.length <= 20`
#   * `-231 <= nums[i] <= 231 - 1`
#   * All the values of `nums` are **unique**.
#   * `nums` is sorted in ascending order.
# 
# 
## @lc code=start
using LeetCode

function summary_ranges(nums::Vector{Int})::Vector{String}
    if length(nums) < 1
        return String[]
    end
    res = String[]
    bg = ed = nums[1]
    for i in 2:length(nums)
        if nums[i] - ed == 1
            ed += 1
        else
            (bg == ed) ? (push!(res, "$(bg)")) : (push!(res, "$bg->$ed"))
            bg = ed = nums[i]
        end
    end
    (bg == ed) ? (push!(res, "$(bg)")) : (push!(res, "$bg->$ed"))
    res
end
## @lc code=end
