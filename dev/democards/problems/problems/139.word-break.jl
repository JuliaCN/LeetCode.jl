# @lc code=start
using LeetCode

# BFS
function word_break_bfs(s::String, word_dict::Vector{String})::Bool
    n, word_dict = length(s), sort!(word_dict; by=x -> length(x))
    valids, valid_pos = fill(false, n), [0]
    while !isempty(valid_pos)
        pos = popfirst!(valid_pos)
        for word in word_dict
            (new_pos = pos + length(word)) > n && break
            new_pos == n && s[(pos + 1):new_pos] == word && return true
            if !valids[new_pos] && s[(pos + 1):new_pos] == word
                valids[new_pos] = true
                push!(valid_pos, new_pos)
            end
        end
    end
    return false
end

# Dynamic Programming
function word_break(s::String, word_dict::Vector{String})::Bool
    lens = sort!(unique!(length.(word_dict)))
    dp = append!([true], fill(false, length(s)))
    for i in eachindex(dp)
        for len in lens
            i > len || break
            dp[i - len] && s[(i - len):(i - 1)] ∈ word_dict && (dp[i] = true)
        end
    end
    return last(dp)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

