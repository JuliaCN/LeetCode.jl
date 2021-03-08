# @lc code=start
using LeetCode

function _generate!(p::String, left::Int, right::Int, res::Vector{String})
    if right == 0
        push!(res, p)
    else
        if left > 0
            _generate!(string(p, "("), left - 1, right, res)
        end

        if right > left
            _generate!(string(p, ")"), left, right - 1, res)
        end
    end
end

function generate_parenthesis(n::Int)::Vector{String}
    res = String[]
    _generate!("", n, n, res)
    return res
end


# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

