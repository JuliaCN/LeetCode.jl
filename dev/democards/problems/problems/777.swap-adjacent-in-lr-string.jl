# @lc code=start
using LeetCode

function can_transform(s::String, t::String)
    i, j = 1, 1
    len = length(s)
    if len != length(t)
        return false
    end
    while i <= len && j <= len
        while s[i] == 'X' && i <= len
            i += 1
        end
        while t[j] == 'X' && j <= len
            j += 1
        end
        if i <= len && j <= len
            if s[i] != t[j] || s[i] == 'L' && i < j || s[i] == 'R' && i > j
                return false
            end
        end
        i += 1
        j += 1
    end
    while i <= len && s[i] == 'X'
        i += 1
    end
    while j <= len && t[j] == 'X'
        j += 1
    end
    return i == j
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

