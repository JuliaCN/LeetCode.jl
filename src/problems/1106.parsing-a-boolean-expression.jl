# ---
# title: 1106. Parsing A Boolean Expression
# id: problem1106
# author: Indigo
# date: 2022-03-08
# difficulty: Hard
# categories: String
# link: <https://leetcode.com/problems/parsing-a-boolean-expression/description/>
# hidden: true
# ---
# 
# Return the result of evaluating a given boolean `expression`, represented as a
# string.
# 
# An expression can either be:
# 
#   * `"t"`, evaluating to `True`;
#   * `"f"`, evaluating to `False`;
#   * `"!(expr)"`, evaluating to the logical NOT of the inner expression `expr`;
#   * `"&(expr1,expr2,...)"`, evaluating to the logical AND of 2 or more inner expressions `expr1, expr2, ...`;
#   * `"|(expr1,expr2,...)"`, evaluating to the logical OR of 2 or more inner expressions `expr1, expr2, ...`
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: expression = "!(f)"
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: expression = "|(f,t)"
#     Output: true
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: expression = "&(t,f)"
#     Output: false
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: expression = "|(&(t,f,t),!(t))"
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= expression.length <= 20000`
#   * `expression[i]` consists of characters in `{'(', ')', '&', '|', '!', 't', 'f', ','}`.
#   * `expression` is a valid expression representing a boolean, as given in the description.
# 
# 
## @lc code=start
using LeetCode

function parse_bool_expr(expr::String)
    operations = Char[]
    operands = Char[]
    for ch in expr
        if ch == '!' || ch == '&' || ch == '|'
            push!(operations, ch)
        elseif ch == ')'
            cur_oprs = Char[]
            while operands[end] != '('
                push!(cur_oprs, pop!(operands))
            end
            pop!(operands)
            op = pop!(operations)
            rs = true
            if op == '|'
                rs = any(==('t'), cur_oprs)
            elseif op == '&'
                rs = all(==('t'), cur_oprs)
            else
                rs = cur_oprs[1] != 't'
            end
            push!(operands, rs ? 't' : 'f')
        elseif ch != ','
            push!(operands, ch)
        end
    end
    return operands[1] == 't' ? true : false
end
## @lc code=end
