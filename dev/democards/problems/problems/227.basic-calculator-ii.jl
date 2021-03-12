# @lc code=start
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

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

