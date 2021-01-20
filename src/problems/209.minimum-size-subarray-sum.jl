# ---
# title: 209. Minimum Size Subarray Sum
# id: problem209
# author: Indigo
# date: 2021-01-20
# difficulty: Medium
# categories: Array, Two Pointers, Binary Search
# link: <https://leetcode.com/problems/minimum-size-subarray-sum/description/>
# hidden: true
# ---
# 
# Given an array of **n** positive integers and a positive integer **s** , find
# the minimal length of a **contiguous** subarray of which the sum ≥ **s**. If
# there isn't one, return 0 instead.
# 
# **Example:  **
# 
#     
#     
#     Input: s = 7, nums = [2,3,1,2,4,3]
#     Output: 2
#     Explanation: the subarray [4,3] has the minimal length under the problem constraint.
# 
# **Follow up:**
# 
# If you have figured out the _O_ ( _n_ ) solution, try coding another solution
# of which the time complexity is _O_ ( _n_ log _n_ ).
# 
# 
## @lc code=start
using LeetCode

function min_subarray_len(s::Int, nums::Vector{Int})
    left = right = 1
    res = typemax(Int)
    len = length(nums)
    Σ = nums[1]
    while right <= len
        if Σ == s 
            res = min(res, right - left + 1)
            Σ -= nums[left]
            left += 1
            right += 1
            (right <= len) && (Σ += nums[right])
        elseif Σ < s
            right += 1
            (right <= len) && (Σ += nums[right])
        else 
            Σ -= nums[left]
            left += 1
        end
    end
    res
end
## @lc code=end
