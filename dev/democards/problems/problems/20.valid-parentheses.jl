# @lc code=start
using LeetCode

function is_valid_parentheses(s::String)::Bool
    unclose, left_side = Char[], Dict{Char,Char}(')' => '(', ']' => '[', '}' => '{')
    for i in s
        if i in "([{"
            push!(unclose, i)
        else
            (isempty(unclose) || left_side[i] != unclose[end]) && return false
            pop!(unclose)
        end
    end
    return isempty(unclose)
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

