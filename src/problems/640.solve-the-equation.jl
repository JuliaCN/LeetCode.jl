# ---
# title: 640. Solve the Equation
# id: problem640
# author: zhwang
# date: 2022-08-17
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/solve-the-equation/description/>
# hidden: true
# ---
# 
# Solve a given equation and return the value of `x` in the form of string
# "x=#value". The equation contains only '+', '-' operation, the variable `x`
# and its coefficient.
# 
# If there is no solution for the equation, return "No solution".
# 
# If there are infinite solutions for the equation, return "Infinite solutions".
# 
# If there is exactly one solution for the equation, we ensure that the value of
# `x` is an integer.
# 
# **Example 1:**  
# 
#     
#     
#     Input: "x+5-3+x=6+x-2"
#     Output: "x=2"
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: "x=x"
#     Output: "Infinite solutions"
#     
# 
# **Example 3:**  
# 
#     
#     
#     Input: "2x=x"
#     Output: "x=0"
#     
# 
# **Example 4:**  
# 
#     
#     
#     Input: "2x+3x-6x=x+2"
#     Output: "x=-1"
#     
# 
# **Example 5:**  
# 
#     
#     
#     Input: "x=x+2"
#     Output: "No solution"
#     
# 
# 
## @lc code=start
using LeetCode

function solve_equation(equation::AbstractString)
    function removex(expr)
        isempty(expr) && return [0, 0]
        last(expr) == 'x' || return [parse(Int, expr), 0]
        expr == "x" && return [0, 1]
        return [0, parse(Int, expr[1:(end - 1)])]
    end

    function removesub(expr)
        exprs = split(expr, '-')
        pos = removex(first(exprs))
        return length(exprs) == 1 ? pos : pos - sum(removex.(@view(exprs[2:end])))
    end

    removeplus(expr) = sum(removesub.(split(expr, '+')))
    left, right = removeplus.(split(equation, '='))
    num, den = left - right
    ## 0x + b = 0
    den == 0 && return num == 0 ? "Infinite solutions" : "No solution"
    return "x=$(-Int(num/den))"
end

## @lc code=end
