# ---
# title: 201. Bitwise AND of Numbers Range
# id: problem201
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Bit Manipulation
# link: <https://leetcode.com/problems/bitwise-and-of-numbers-range/description/>
# hidden: true
# ---
# 
# Given a range [m, n] where 0 <= m <= n <= 2147483647, return the bitwise AND
# of all numbers in this range, inclusive.
# 
# **Example 1:**
# 
#     
#     
#     Input: [5,7]
#     Output: 4
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [0,1]
#     Output: 0
# 
# 
## @lc code=start
using LeetCode

function range_bitwise_and(m::Int, n::Int)::Int
    i = 0
    while m != n
        m >>= 1
        n >>= 1
        i += 1
    end
    return n << i
end
## @lc code=end
