# ---
# title: 646. Maximum Length of Pair Chain
# id: problem646
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/maximum-length-of-pair-chain/description/>
# hidden: true
# ---
# 
# You are given `n` pairs of numbers. In every pair, the first number is always
# smaller than the second number.
# 
# Now, we define a pair `(c, d)` can follow another pair `(a, b)` if and only if
# `b < c`. Chain of pairs can be formed in this fashion.
# 
# Given a set of pairs, find the length longest chain which can be formed. You
# needn't use up all the given pairs. You can select pairs in any order.
# 
# **Example 1:**  
# 
#     
#     
#     Input: [[1,2], [2,3], [3,4]]
#     Output: 2
#     Explanation: The longest chain is [1,2] -> [3,4]
#     
# 
# **Note:**  
# 
#   1. The number of given pairs will be in the range [1, 1000].
# 
# 
## @lc code=start
using LeetCode

function find_longest_chain(intervals::Vector{Tuple{Int,Int}})
    isempty(intervals) && return 0
    sort!(intervals; by=x -> x[2])
    lst, res = intervals[1][2], 1
    for intv in intervals
        intv[1] <= lst && continue
        res += 1
        lst = intv[2]
    end
    return res
end
## @lc code=end
