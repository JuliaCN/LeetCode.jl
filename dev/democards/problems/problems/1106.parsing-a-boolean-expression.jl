# @lc code=start
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
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

