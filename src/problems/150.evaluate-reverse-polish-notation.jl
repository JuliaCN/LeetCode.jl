# ---
# title: 150. Evaluate Reverse Polish Notation
# id: problem150
# author: Indigo
# date: 2021-01-19
# difficulty: Medium
# categories: Stack
# link: <https://leetcode.com/problems/evaluate-reverse-polish-notation/description/>
# hidden: true
# ---
# 
# Evaluate the value of an arithmetic expression in [Reverse Polish
# Notation](http://en.wikipedia.org/wiki/Reverse_Polish_notation).
# 
# Valid operators are `+`, `-`, `*`, `/`. Each operand may be an integer or
# another expression.
# 
# **Note:**
# 
#   * Division between two integers should truncate toward zero.
#   * The given RPN expression is always valid. That means the expression would always evaluate to a result and there won't be any divide by zero operation.
# 
# **Example 1:**
# 
#     
#     
#     Input: ["2", "1", "+", "3", "*"]
#     Output: 9
#     Explanation: ((2 + 1) * 3) = 9
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: ["4", "13", "5", "/", "+"]
#     Output: 6
#     Explanation: (4 + (13 / 5)) = 6
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]
#     Output: 22
#     Explanation: 
#       ((10 * (6 / ((9 + 3) * -11))) + 17) + 5
#     = ((10 * (6 / (12 * -11))) + 17) + 5
#     = ((10 * (6 / -132)) + 17) + 5
#     = ((10 * 0) + 17) + 5
#     = (0 + 17) + 5
#     = 17 + 5
#     = 22
#     
# 
# 
## @lc code=start
using LeetCode
using DataStructures
function eval_rpn(tokens::Vector{String})
    stk = Stack{Int}()
    for token in tokens
        if token == "+"
            num2 = pop!(stk)
            num1 = pop!(stk)
            push!(stk, num1 + num2)
        elseif token == "-"
            num2 = pop!(stk)
            num1 = pop!(stk)
            push!(stk, num1 - num2)
        elseif token == "*"
            num2 = pop!(stk)
            num1 = pop!(stk)
            push!(stk, num1 * num2)
        elseif token == "/"
            num2 = pop!(stk)
            num1 = pop!(stk)
            push!(stk, num1 ÷ num2)
        else
            push!(stk, parse(Int, token))
        end
    end
    top(stk)
end

## @lc code=end
