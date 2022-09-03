# ---
# title: 1031. Maximum Sum of Two Non-Overlapping Subarrays
# id: problem1031
# author: Indigo
# date: 2022-08-31
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/maximum-sum-of-two-non-overlapping-subarrays/description/>
# hidden: true
# ---
# 
# Given an array `A` of non-negative integers, return the maximum sum of
# elements in two non-overlapping (contiguous) subarrays, which have lengths `L`
# and `M`.  (For clarification, the `L`-length subarray could occur before or
# after the `M`-length subarray.)
# 
# Formally, return the largest `V` for which `V = (A[i] + A[i+1] + ... +
# A[i+L-1]) + (A[j] + A[j+1] + ... + A[j+M-1])` and either:
# 
#   * `0 <= i < i + L - 1 < j < j + M - 1 < A.length`, **or**
#   * `0 <= j < j + M - 1 < i < i + L - 1 < A.length`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [0,6,5,2,2,5,1,9,4], L = 1, M = 2
#     Output: 20
#     Explanation: One choice of subarrays is [9] with length 1, and [6,5] with length 2.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [3,8,1,3,2,1,8,9,0], L = 3, M = 2
#     Output: 29
#     Explanation: One choice of subarrays is [3,8,1] with length 3, and [8,9] with length 2.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = [2,1,5,6,0,9,5,0,3,8], L = 4, M = 3
#     Output: 31
#     Explanation: One choice of subarrays is [5,6,0,9] with length 4, and [3,8] with length 3.
#     
# 
# 
# 
# **Note:**
# 
#   1. `L >= 1`
#   2. `M >= 1`
#   3. `L + M <= A.length <= 1000`
#   4. `0 <= A[i] <= 1000`
# 
# 
## @lc code=start
using LeetCode

function window_sum(nums::Vector{Int}, l::Int)
    res = fill(0, length(nums))
    return window_sum!(res, nums, l)
end

function window_sum!(res::Vector{Int}, nums::Vector{Int}, l::Int)
    res[1] = sum(@view(nums[1:l]))
    cur_sum = res[1]
    for i in 2:(length(nums) - l + 1)
        cur_sum += nums[i + l - 1] - nums[i - 1]
        res[i] = cur_sum
    end
    return res
end

function max_win_sum(nums::Vector{Int}, l::Int)
    res = fill(0, length(nums))
    return max_win_sum!(res, nums, l)
end

function max_win_sum!(res::Vector{Int}, nums::Vector{Int}, l::Int)
    window_sum!(res, nums, l)
    for i in (length(nums) - l):-1:1
        res[i] = max(res[i], res[i + 1])
    end
    return res
end

function max_sum_two_no_overlap(nums::Vector{Int}, first_len::Int, second_len::Int)
    n = length(nums)
    tlen = first_len + second_len
    flen_sums = window_sum(nums, first_len)
    slen_sums = window_sum(nums, second_len)

    fmax_win = max_win_sum(nums, first_len)
    smax_win = max_win_sum(nums, second_len)
    return max(
        maximum(flen_sums[i] + smax_win[i + first_len] for i in 1:(n - tlen + 1)),
        maximum(slen_sums[i] + fmax_win[i + second_len] for i in 1:(n - tlen + 1)),
    )
end

## @lc code=end
