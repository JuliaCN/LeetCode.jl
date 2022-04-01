# ---
# title: 172. Factorial Trailing Zeroes
# id: problem172
# author: zhwang
# date: 2022-03-25
# difficulty: Easy
# categories: Math
# link: <https://leetcode.com/problems/factorial-trailing-zeroes/description/>
# hidden: true
# ---
# 
# Given an integer `n`, return _the number of trailing zeroes in`n!`_.
# 
# **Follow up:** Could you write a solution that works in logarithmic time
# complexity?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 3
#     Output: 0
#     Explanation:  3! = 6, no trailing zero.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 5
#     Output: 1
#     Explanation:  5! = 120, one trailing zero.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: n = 0
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 104`
# 
# 
## @lc code=start
using LeetCode

## simulate Mathematica's function NestWhileList
function nest_while_list(f::Function, val::T, chk::Function)::Vector{T} where {T}
    res = [val]
    while chk(val)
        val = f(val)
        push!(res, val)
    end
    return res
end

trailing_zeroes(n::Int) = sum(nest_while_list(i -> i ÷ 5, n ÷ 5, >(1)))
## equivalent to the following
## function trailing_zeroes(n::Int)::Int
##     res = 0
##     while n >=5
##         n ÷= 5
##         res += n
##     end
##     res
## end

## @lc code=end
