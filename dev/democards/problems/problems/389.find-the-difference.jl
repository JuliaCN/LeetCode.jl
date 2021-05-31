# @lc code=start
using LeetCode

function find_the_difference(s::String, t::String)::Char
    cnt = fill(0, 26)
    for ch in codeunits(s)
        cnt[ch - 0x60] += 1
    end
    for ch in codeunits(t)
        if((cnt[ch - 0x60] -= 1) < 0)
            return Char(ch)
        end
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

