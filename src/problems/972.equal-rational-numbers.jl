# ---
# title: 972. Equal Rational Numbers
# id: problem972
# author: Indigo
# date: 2021-02-20
# difficulty: Hard
# categories: Math
# link: <https://leetcode.com/problems/equal-rational-numbers/description/>
# hidden: true
# ---
# 
# Given two strings `S` and `T`, each of which represents a non-negative
# rational number, return **True** if and only if they represent the same
# number. The strings may use parentheses to denote the repeating part of the
# rational number.
# 
# In general a rational number can be represented using up to three parts: an
# _integer part_ , a  _non-repeating part,_ and a  _repeating part_. The number
# will be represented in one of the following three ways:
# 
#   * `<IntegerPart>` (e.g. 0, 12, 123)
#   * `<IntegerPart><.><NonRepeatingPart>`  (e.g. 0.5, 1., 2.12, 2.0001)
#   * `<IntegerPart><.><NonRepeatingPart><(><RepeatingPart><)>` (e.g. 0.1(6), 0.9(9), 0.00(1212))
# 
# The repeating portion of a decimal expansion is conventionally denoted within
# a pair of round brackets.  For example:
# 
# 1 / 6 = 0.16666666... = 0.1(6) = 0.1666(6) = 0.166(66)
# 
# Both 0.1(6) or 0.1666(6) or 0.166(66) are correct representations of 1 / 6.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: S = "0.(52)", T = "0.5(25)"
#     Output: true
#     Explanation: Because "0.(52)" represents 0.52525252..., and "0.5(25)" represents 0.52525252525..... , the strings represent the same number.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: S = "0.1666(6)", T = "0.166(66)"
#     Output: true
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: S = "0.9(9)", T = "1."
#     Output: true
#     Explanation:
#     "0.9(9)" represents 0.999999999... repeated forever, which equals 1.  [[See this link for an explanation.](https://en.wikipedia.org/wiki/0.999...)]
#     "1." represents the number 1, which is formed correctly: (IntegerPart) = "1" and (NonRepeatingPart) = "".
# 
# 
# 
# **Note:**
# 
#   1. Each part consists only of digits.
#   2. The `<IntegerPart>` will not begin with 2 or more zeros.  (There is no other restriction on the digits of each part.)
#   3. `1 <= <IntegerPart>.length <= 4 `
#   4. `0 <= <NonRepeatingPart>.length <= 4 `
#   5. `1 <= <RepeatingPart>.length <= 4`
# 
# 
## @lc code=start
using LeetCode

function is_rational_equal(s::String, t::String)
    function to_rational(s::String)::Rational
        pos1, pos2 = findfirst('.', s), findfirst('(', s)
        (pos1 === nothing) && return parse(Int, s)
        (pos1 == length(s)) && return parse(Int, s[1:end-1])
        pos2 === nothing && return parse(Int, s[1:pos1-1]) + parse(Int, s[pos1 + 1:end]) // 10 ^ (length(s) - pos1) 
        pos3 = findlast(')', s)
        int_part = parse(Int, s[1:pos1-1]) |> Rational
        nr_part = pos1 == pos2 - 1 ? 0 : parse(Int, s[pos1+1:pos2-1]) // 10 ^ (pos2 - pos1 - 1)
        rp_part = parse(Int, s[pos2+1:pos3-1]) // (10 ^ (pos3 - pos2 - 1) - 1) // 10 ^ (pos2 - pos1 - 1)
        int_part + nr_part + rp_part
    end
    to_rational(s) == to_rational(t)
end
## @lc code=end
is_rational_equal("0.9(9)", "1.")