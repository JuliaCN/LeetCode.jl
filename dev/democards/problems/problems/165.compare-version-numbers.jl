# @lc code=start
using LeetCode

function compare_version(version1::String, version2::String)
    s_v1 = parse.(Int, split(version1, "."))
    s_v2 = parse.(Int, split(version2, "."))
    if length(s_v1) > length(s_v2)
        append!(s_v2, fill(0, length(s_v1) - length(s_v2)))
    else
        append!(s_v1, fill(0, length(s_v2) - length(s_v1)))
    end
    for i in 1:length(s_v1)
        if s_v1 > s_v2
            return 1
        elseif s_v1 < s_v2
            return -1
        end
    end
    return 0
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

