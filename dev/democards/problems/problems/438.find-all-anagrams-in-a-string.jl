# @lc code=start
using LeetCode

function find_anagrams(s::String, p::String)
    len = length(p)
    cntp = fill(0, 26)
    cnts = cntp[:]
    res = Int[]
    for c in p
        cntp[c - 'a' + 1] += 1
    end
    for i in 1:len-1
        cnts[s[i] - 'a' + 1] += 1
    end
    for i in len:length(s)
        cnts[s[i] - 'a' + 1] += 1
        cnts == cntp && push!(res, i - len + 1)
        cnts[s[i - len + 1] - 'a' + 1] -= 1
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

