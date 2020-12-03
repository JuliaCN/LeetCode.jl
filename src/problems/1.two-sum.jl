#
# @lc app=leetcode id=1 lang=julia
#
# [1] Two Sum
#
# https://leetcode.com/problems/two-sum/description/
#
# algorithms
# Easy (45.91%)
# Likes:    18029
# Dislikes: 647
# Total Accepted:    3.6M
# Total Submissions: 7.8M
# Testcase Example:  '[2,7,11,15]\n9'
"""
Given an array of integers nums and an integer target, return indices of the
two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may
not use the same element twice.

You can return the answer in any order.


Example 1:


Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Output: Because nums[0] + nums[1] == 9, we return [0, 1].


Example 2:


Input: nums = [3,2,4], target = 6
Output: [1,2]


Example 3:


Input: nums = [3,3], target = 6
Output: [0,1]



Constraints:


2 <= nums.length <= 10^3
-10^9 <= nums[i] <= 10^9
-10^9 <= target <= 10^9
Only one valid answer exists.



"""
# @lc code=start
function two_sum(nums::Vector{Int}, target::Int)::Union{Nothing,Tuple{Int,Int}}
    seen = Dict{Int,Int}()

    for (i, n) in enumerate(nums)
        m = target - n
        if haskey(seen, m)
            return seen[m], i
        else
            seen[n] = i
        end
    end
end
# @lc code=end
