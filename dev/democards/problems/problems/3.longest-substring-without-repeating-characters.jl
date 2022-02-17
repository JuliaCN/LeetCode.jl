# @lc code=start
using LeetCode

function length_of_longest_substring(s::String)::Int
    max_string, max_len = "", 0
    for c in s
        # if c occurs twice in max_string
        if c in max_string
            max_string = max_string[(findfirst(c, max_string) + 1):end] * c
        else
            max_string *= c
            max_len = max(length(max_string), max_len)
        end
    end
    return max_len
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

