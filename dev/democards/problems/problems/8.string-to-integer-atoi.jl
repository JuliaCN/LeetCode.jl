# @lc code=start
using LeetCode

function my_atoi(s::String)::Int
    s = lstrip(s)
    if length(s) == 0
        0
    else
        try
            m = match(r"^[\-\+]?[0-9]+", s)
            if isnothing(m)
                0
            else
                parse(Int32, m.match)
            end
        catch
            if s[1] == '-'
                typemin(Int32)
            else
                typemax(Int32)
            end
        end
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

