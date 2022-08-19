# @lc code=start
using LeetCode

# double pointer
function reformatstr(s::AbstractString)
    n = length(s) + 1
    res = Vector{Char}(undef, n)
    odd, even = 1, 2
    for c in s
        if isdigit(c)
            odd > n && return ""
            res[odd] = c
            odd += 2
        else
            even > n && return ""
            res[even] = c
            even += 2
        end
    end
    abs(even - 1 - odd) > 2 && return ""
    max(odd, even) < n + 2 && return join(@view(res[1:(end - 1)]))
    return last(res) * join(@view(res[1:(end - 2)]))
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

