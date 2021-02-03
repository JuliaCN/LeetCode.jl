# @lc code=start
using LeetCode

function character_replacement(s::String, k::Int)
    i, j, len, maxn = 1, 1, length(s), 0
    cntr = fill(0, 26)
    while j ≤ len
        maxn = max(maxn, cntr[s[j] - 'A' + 1] += 1)
        if maxn + k < j - i + 1
            cntr[s[i] - 'A' + 1] -= 1
            i += 1
        end
        j += 1
    end
    j - i
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

