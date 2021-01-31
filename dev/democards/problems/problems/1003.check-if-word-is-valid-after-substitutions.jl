# @lc code=start
using LeetCode

function is_valid_abc_str(s::String)
    while occursin("abc", s)
        s = replace(s, "abc" => "")
    end
    return s == ""
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

