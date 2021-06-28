# @lc code=start
using LeetCode

function count_substrings(s::String)
    len, res = length(s), 0
    cu = codeunits(s)
    for i in 1:len, j in (0, 1)
        l, r = i, i + j
        while l >= 1 && r <= len && cu[l] == cu[r]
            res += 1
            l -= 1
            r += 1
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

