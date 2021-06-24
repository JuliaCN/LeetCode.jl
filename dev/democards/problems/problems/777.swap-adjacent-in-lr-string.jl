# @lc code=start
using LeetCode

function can_transform(s::String, t::String)
    i, j = 1, 1
    len = length(s)
    len != length(t) && return false
    while i <= len || j <= len
        while i <= len && s[i] == 'X'; i += 1; end
        while j <= len && t[j] == 'X' ; j += 1; end
        ((i <= len) ⊻ (j <= len)) && return false
        if i <= len && j <= len
            (s[i] != t[j] || (s[i] == 'L' && i < j) || (s[i] == 'R' && i > j)) && return false
        end
        i += 1; j += 1
    end
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

