# ---
# title: 996. Number of Squareful Arrays
# id: problem996
# author: Indigo
# date: 2021-05-31
# difficulty: Hard
# categories: Math, Backtracking, Graph
# link: <https://leetcode.com/problems/number-of-squareful-arrays/description/>
# hidden: true
# ---
# 
# Given an array `A` of non-negative integers, the array is _squareful_ if for
# every pair of adjacent elements, their sum is a perfect square.
# 
# Return the number of permutations of A that are squareful.  Two permutations
# `A1` and `A2` differ if and only if there is some index `i` such that `A1[i]
# != A2[i]`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,17,8]
#     Output: 2
#     Explanation:
#     [1,8,17] and [17,8,1] are the valid permutations.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [2,2,2]
#     Output: 1
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 12`
#   2. `0 <= A[i] <= 1e9`
# 
# 
## @lc code=start
using LeetCode

function can_adj(u, v) 
    sq = isqrt(u + v)
    return sq * sq == u + v
end

function num_squareful_perms(nums::Vector{Int})
    ctr = counter(nums)
    adj_set = Set{Tuple{Int, Int}}()
    for i1 in 1:length(nums), i2 in i1:length(nums) 
        n1, n2 = nums[i1], nums[i2]
        if can_adj(n1, n2) 
            push!(adj_set, (n1, n2))
            push!(adj_set, (n2, n1))
        end
    end
    function gen_perms(ctr, lst = nothing)
        sum(ctr) == 0 && return 1
        res = 0
        for k in keys(ctr)
            (ctr[k] == 0 || !isnothing(lst) && (lst, k) ∉ adj_set) && continue
            ctr[k] -= 1
            res += gen_perms(ctr, k)
            ctr[k] += 1
        end
        res
    end
    gen_perms(ctr)
end
## @lc code=end
