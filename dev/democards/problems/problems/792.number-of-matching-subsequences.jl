# @lc code=start
using LeetCode

function num_matching_subseq(S::String, words::Vector{String})
    map = Dict{Char, Vector{String}}((ch, []) for ch in 'a':'z')
    for w in words
        push!(map[w[1]], w[2:end])
    end
    res = 0
    for ch in S
        wds = String[]
        wds, map[ch] = map[ch], wds
        for w in wds
            if w == ""
                res += 1
            else
                push!(map[w[1]], w[2:end])
            end
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

