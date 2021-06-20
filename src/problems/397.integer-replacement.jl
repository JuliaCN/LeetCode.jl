# ---
# title: 397. Integer Replacement
# id: problem397
# author: Indigo
# date: 2021-06-20
# difficulty: Medium
# categories: Math, Bit Manipulation
# link: <https://leetcode.com/problems/integer-replacement/description/>
# hidden: true
# ---
# 
# Given a positive integer `n`, you can apply one of the following operations:
# 
#   1. If `n` is even, replace `n` with `n / 2`.
#   2. If `n` is odd, replace `n` with either `n + 1` or `n - 1`.
# 
# Return _the minimum number of operations needed for`n` to become `1`_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 8
#     Output: 3
#     Explanation: 8 -> 4 -> 2 -> 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 7
#     Output: 4
#     Explanation: 7 -> 8 -> 4 -> 2 -> 1
#     or 7 -> 6 -> 3 -> 2 -> 1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: n = 4
#     Output: 2
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

function integer_replacement(n::Int)
    res = 0
    while n != 1
        if iseven(n)
            n >>= 1
        elseif n & 2 == 0 || n == 3
            n -= 1
        else
            n += 1
        end
        res += 1
    end
    return res
end
## @lc code=end