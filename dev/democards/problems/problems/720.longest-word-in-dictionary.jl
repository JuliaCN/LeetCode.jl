# @lc code=start
using LeetCode

# use Trie
longest_common_word(words::Vector{String}) = longest_common_word!(words)
function longest_common_word!(words::Vector{String})::String
    root, res = Dict{Char,Dict}(), ""
    for word in sort!(words; by=length)
        node, n = root, length(word)
        for (i, c) in enumerate(word)
            if haskey(node, c)
                node = node[c]
            elseif i == n
                node[c] = Dict{Char,Dict}() ## add new child
                res = word
            else
                break
            end
        end
    end
    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

