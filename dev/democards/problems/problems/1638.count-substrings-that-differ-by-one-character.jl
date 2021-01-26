# @lc code=start
using LeetCode

function count_substrings(s::String, t::String)
    function count_substr(s::SubString{String}, t::String)
        res, len_s, len_t = 0, length(s), length(t)
        for i in 1:len_t
            j, k, diff = 1, i, 0
            while diff < 2 && j <= len_s && k <= len_t
                res += diff
                diff += (s[j] != t[k])
                j += 1; k += 1;
            end
            res += (diff == 1)
        end
        res
    end
    res = 0
    for i in 1:length(s)
        res += count_substr(SubString(s, i), t)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

