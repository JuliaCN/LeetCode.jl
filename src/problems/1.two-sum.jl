# ---
# title: 1. Two Sum
# id: id1
# author: Jun Tian
# date: 2020-10-31
# app: leetcode
# lang: julia
# ---

# https://leetcode.com/problems/two-sum/description/

# - algorithms
# - Easy (44.95%)
# - Total Accepted:    2.5M
# - Total Submissions: 5.5M
# - Testcase Example:  `[2,7,11,15]`

# Given an array of integers, return **indices** of the two
# numbers such that they add up to a specific target.

# You may assume that each input would have
# **_exactly_** one solution, and you may not use the
# same element twice.

# Example:

# Given `nums = [2, 7, 11, 15]`, `target = 9`.
# Because `nums[0] + nums[1] = 2 + 7 = 9`,
# return `[0, 1]`.


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
