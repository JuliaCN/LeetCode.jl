# @lc code=start
using LeetCode

function reorganize_string(S::String)
    char_arr = codeunits(S)
    ascii_a, len = Int('a'), length(S)
    mp = fill(0, 26)
    for ch in char_arr
        mp[ch - ascii_a + 1] += 1
    end
    max_freq = argmax(mp)
    if mp[max_freq] > (len + 1) ÷ 2
        return ""
    end
    res = fill('a', len)
    idx = 1
    for i in 1:mp[max_freq]
        res[idx] = Char(max_freq + ascii_a - 1)
        idx += 2
    end
    mp[max_freq] = 0
    for i in 1:26
        for j in 1:mp[i]
            (idx > len) && (idx = 2)
            res[idx] = Char(i + ascii_a - 1)
            idx += 2
        end
    end
    # println(res)
    return String(res)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

