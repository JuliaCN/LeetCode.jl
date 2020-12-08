# @lc code=start
using LeetCode

function length_of_longest_substring(s::String)::Int
    seen = Set{Char}()
    res = 0

    for x in s
        if x in seen
            empty!(seen)
        end
        push!(seen, x)
        res = max(res, length(seen))
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

