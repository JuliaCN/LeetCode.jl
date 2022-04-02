# ---
# title: 18. 4Sum
# id: problem18
# author: zhwang
# date: 2022-03-15
# difficulty: Medium
# categories: Array, Hash Table, Two Pointers
# link: <https://leetcode.com/problems/4sum/description/>
# hidden: true
# ---
# 
# Given an array `nums` of _n_ integers and an integer `target`, are there
# elements _a_ , _b_ , _c_ , and _d_ in `nums` such that _a_ \+ _b_ \+ _c_ \+
# _d_ = `target`? Find all unique quadruplets in the array which gives the sum
# of `target`.
# 
# **Notice**  that the solution set must not contain duplicate quadruplets.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,0,-1,0,-2,2], target = 0
#     Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [], target = 0
#     Output: []
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= nums.length <= 200`
#   * `-109 <= nums[i] <= 109`
#   * `-109 <= target <= 109`
# 
# 
## @lc code=start
using LeetCode

four_sum(nums::Vector{Int}, target::Int) = four_sum!(copy(nums), target)
function four_sum!(nums::Vector{Int}, target::Int)::Vector{NTuple{4,Int}}
    n, res = length(sort!(nums)), NTuple{4,Int}[]
    n <= 3 && return NTuple{4,Int}[]
    for (i, first) in enumerate(@view(nums[1:(end - 3)]))
        i > 1 && first == nums[i - 1] && continue ## avoid repetition
        sum(@view(nums[i:(i + 3)])) > target && return res ## pruning
        first + sum(@view(nums[(end - 3):end])) < target && continue ## pruning
        for j in (i + 1):(n - 2)
            j > i + 1 && nums[j] == nums[j - 1] && continue ## avoid repetition
            first + sum(@view(nums[j:(j + 2)])) > target && break ## pruning
            first + nums[j] + nums[end - 1] + nums[end] < target && continue ## pruning
            newtarget = target - first - nums[j]
            left, right = j + 1, n
            while left < right
                newsum = nums[left] + nums[right]
                if newsum < newtarget
                    left += 1
                elseif newsum > newtarget
                    right -= 1
                else
                    push!(res, (first, nums[j], nums[left], nums[right]))
                    pos = findfirst(!=(nums[left]), @view(nums[(left + 1):right]))
                    isnothing(pos) ? break : (left += pos)
                    pos = findfirst(!=(nums[right]), @view(nums[(right - 1):-1:left]))
                    isnothing(pos) ? break : (right -= pos)
                end
            end
        end
    end
    return res
end
## @lc code=end
