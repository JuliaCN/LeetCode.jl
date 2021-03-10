# ---
# title: 224. Basic Calculator
# id: problem224
# author: Qling
# date: 2021-03-10
# difficulty: Hard
# categories: Math, Stack
# link: <https://leetcode.com/problems/basic-calculator/description/>
# hidden: true
# ---
# 
# Implement a basic calculator to evaluate a simple expression string.
# 
# The expression string may contain open `(` and closing parentheses `)`, the
# plus `+` or minus sign `-`, **non-negative** integers and empty spaces ` `.
# 
# **Example 1:**
# 
#     
#     
#     Input: "1 + 1"
#     Output: 2
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: " 2-1 + 2 "
#     Output: 3
# 
# **Example 3:**
# 
#     
#     
#     Input: "(1+(4+5+2)-3)+(6+8)"
#     Output: 23
# 
# **Note:**
# 
#   * You may assume that the given expression is always valid.
#   * **Do not** use the `eval` built-in library function.
# 
# 
## @lc code=start
using LeetCode

function calculate(s::String)::Int
    res, num, sign, stk = 0, 0, 1, []
    for c in s
        if isdigit(c)
            num = 10 * num + parse(Int, c)
        elseif c in ['-', '+']
            res += num * sign
            num = 0
            sign = (c == '-') ? -1 : 1
        elseif c == '('
            push!(stk, res)
            push!(stk, sign)
            res, sign = 0, 1
        elseif c == ')'
            res += num * sign
            res *= pop!(stk)
            res += pop!(stk)
            num = 0
        end
    end

    return res + num * sign
end
## @lc code=end
