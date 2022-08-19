# @lc code=start
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
    # 0x + b = 0
    den == 0 && return num == 0 ? "Infinite solutions" : "No solution"
    return "x=$(-Int(num/den))"
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

