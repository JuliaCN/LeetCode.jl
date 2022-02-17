# @lc code=start
using LeetCode
using DataStructures

function can_construct(ransom_note::String, magazine::String)::Bool
    words = DefaultDict{Char,Int}(0)
    for i in magazine
        words[i] += 1
    end
    for i in ransom_note
        words[i] == 0 && return false
        words[i] -= 1
    end
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

