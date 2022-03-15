# ---
# title: 15. 3Sum
# id: problem15
# author: zhwang
# date: 2022-03-15
# difficulty: Medium
# categories: Array, Two Pointers
# link: <https://leetcode.com/problems/3sum/description/>
# hidden: true
# ---
# 
# Given an array `nums` of _n_ integers, are there elements _a_ , _b_ , _c_ in
# `nums` such that _a_ \+ _b_ \+ _c_ = 0? Find all unique triplets in the array
# which gives the sum of zero.
# 
# Notice that the solution set must not contain duplicate triplets.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [-1,0,1,2,-1,-4]
#     Output: [[-1,-1,2],[-1,0,1]]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = []
#     Output: []
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [0]
#     Output: []
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= nums.length <= 3000`
#   * `-105 <= nums[i] <= 105`
# 
# 
## @lc code=start
using LeetCode

function three_sum!(nums::Vector{Int})::Vector{NTuple{3,Int}}
    sort!(nums)
    n, res, pre = length(nums), NTuple{3,Int}[], NaN
    for (i, first) in enumerate(nums)
        first == pre && continue
        pre, left, right = first, i + 1, n
        while left < right
            total = nums[left] + nums[right]
            if total < -first
                left += 1
            elseif total > -first
                right -= 1
            else
                push!(res, (first, nums[left], nums[right]))
                pos = findfirst(!=(nums[left]), @view(nums[(left + 1):right]))
                isnothing(pos) ? break : left += pos
                pos = findfirst(!=(nums[right]), @view(nums[(right - 1):-1:left]))
                isnothing(pos) ? break : right -= pos
            end
        end
    end
    return res
end
three_sum(nums::Vector{Int}) = three_sum!(copy(nums))

## @lc code=end
