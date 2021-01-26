# @lc code=start
using LeetCode
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
    first(stk)
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

