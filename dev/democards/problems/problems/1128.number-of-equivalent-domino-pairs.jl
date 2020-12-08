# @lc code=start
using LeetCode

function num_equiv_domino_pairs(dominoes::Vector{Tuple{Int,Int}})::Int
    counts = Dict{Tuple{Int,Int},Int}()
    n = 0
    for (k, v) in dominoes
        p = minmax(k, v)
        if haskey(counts, p)
            n += counts[p]
            counts[p] += 1
        else
            counts[p] = 1
        end
    end
    return n
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

