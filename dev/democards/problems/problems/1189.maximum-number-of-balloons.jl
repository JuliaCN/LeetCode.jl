# @lc code=start
using LeetCode

function max_num_of_ballons(text::String)::Int
    words = Dict{Char,Int}(s => 0 for s in "balon")
    for s in text
        if haskey(words, s)
            words[s] += 1
        end
    end
    return min(words['b'], words['a'], words['l'] ÷ 2, words['o'] ÷ 2, words['n'])
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

