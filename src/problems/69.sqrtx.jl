# ---
# title: 69. Sqrt(x)
# id: problem69
# author: Indigo
# date: 2022-03-03
# difficulty: Easy
# categories: Math, Binary Search
# link: <https://leetcode.com/problems/sqrtx/description/>
# hidden: true
# ---
# 
# Given a non-negative integer `x`, compute and return _the square root of_ `x`.
# 
# Since the return type is an integer, the decimal digits are **truncated** ,
# and only **the integer part** of the result is returned.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: x = 4
#     Output: 2
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: x = 8
#     Output: 2
#     Explanation: The square root of 8 is 2.82842..., and since the decimal part is truncated, 2 is returned.
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= x <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

my_sqrt = isqrt
function mysqrt(x::Int)::Int
    x < 0 && throw(DomainError(x))
    left, right = 0, x
    while left <= right
        mid = left + ((right - left) >> 1)
        if mid^2 > x
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return right
end
## @lc code=end
