# @lc code=start
using LeetCode
using DataStructures
function is_anagram(s::String, t::String)::Bool
    length(s) != length(t) && return false
    count_s, count_t = DefaultDict{Char,Int}(0), DefaultDict{Char,Int}(0)
    for i in eachindex(s)
        count_s[s[i]] += 1
        count_t[t[i]] += 1
    end
    return all(count_s[c] == count_t[c] for c in 'a':'z')
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

