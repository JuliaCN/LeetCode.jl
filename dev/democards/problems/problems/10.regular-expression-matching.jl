# @lc code=start
using LeetCode

function is_match(s::AbstractString, p::AbstractString)::Bool
    if isempty(p)
        isempty(s)
    elseif length(p) >= 2 && p[2] == '*'
        if !isempty(s) && (s[1] == p[1] || p[1] == '.')
            # case 1: * means 1 or more of previous char, then the first char of `s` and `p` must match.
            is_match(SubString(s, 2), p)
        else
            # case 2: * means zero of previous char, ignore it and match the rest
            is_match(s, SubString(p, 3))
        end
    else
        if isempty(s)
            false  ## length mismatch
        elseif (s[1] == p[1] || p[1] == '.')
            is_match(SubString(s, 2), SubString(p, 2))
        else
            false  ## first char mismatch
        end
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

