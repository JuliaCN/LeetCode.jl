# ---
# title: 227. Basic Calculator II
# id: problem227
# author: Qling
# date: 2021-03-11
# difficulty: Medium
# categories: String, Stack
# link: <https://leetcode.com/problems/basic-calculator-ii/description/>
# hidden: true
# ---
# 
# Given a string `s` which represents an expression, _evaluate this expression
# and return its value_.
# 
# The integer division should truncate toward zero.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "3+2*2"
#     Output: 7
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = " 3/2 "
#     Output: 1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = " 3+5 / 2 "
#     Output: 5
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 3 * 105`
#   * `s` consists of integers and operators `('+', '-', '*', '/')` separated by some number of spaces.
#   * `s` represents **a valid expression**.
#   * All the integers in the expression are non-negative integers in the range `[0, 231 - 1]`.
#   * The answer is **guaranteed** to fit in a **32-bit integer**.
# 
# 
## @lc code=start
using LeetCode

function calculate_ii(s::String)::Int
    num, stk, sign = 0, Int64[], '+'

    for (i, c) in enumerate(s)
        isdigit(c) && (num = 10 * num + parse(Int, c))
        if c in ['-', '+', '/', '*'] || i == length(s)
            if sign == '+'
                push!(stk, num)
            elseif sign == '-'
                push!(stk, -num)
            elseif sign == '*'
                push!(stk, pop!(stk) * num)
            elseif sign == '/'
                push!(stk, pop!(stk) ÷ num)
            end

            num = 0
            sign = c
        end
    end

    return sum(stk)
end

## @lc code=end
