# ---
# title: 954. Array of Doubled Pairs
# id: problem954
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Array, Hash Table
# link: <https://leetcode.com/problems/array-of-doubled-pairs/description/>
# hidden: true
# ---
# 
# Given an array of integers `A` with even length, return `true` if and only if
# it is possible to reorder it such that `A[2 * i + 1] = 2 * A[2 * i]` for every
# `0 <= i < len(A) / 2`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [3,1,3,6]
#     Output: false
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [2,1,2,6]
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = [4,-2,2,-4]
#     Output: true
#     Explanation: We can take two groups, [-2,-4] and [2,4] to form [-2,-4,2,4] or [2,4,-2,-4].
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: A = [1,2,4,16,8,4]
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= A.length <= 3 * 104`
#   * `A.length` is even.
#   * `-105 <= A[i] <= 105`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
function canReorderDoubled(arr::Vector{Int})::Bool
    cnt = counter(arr)
    for a in sort!(arr, by=abs)
        cnt[a] == 0 && continue
        cnt[2a] == 0 && return false
        cnt[2a] -= 1
        cnt[a] -= 1
    end
    return true
end
## @lc code=end
