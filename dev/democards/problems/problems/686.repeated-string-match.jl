# @lc code=start
using LeetCode

function repeated_string_match(a::String, b::String)
    minres = (length(b) - 1) ÷ length(a) + 1
    s = a ^ minres
    for i in 0:2
        occursin(b, s) && return minres + i
        s *= a
    end
    return -1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

