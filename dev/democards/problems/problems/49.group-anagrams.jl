# @lc code=start
using LeetCode
using DataStructures

function group_anagrams(strs::Vector{String})::Vector{Vector{String}}
    swords = DefaultDict{AbstractString,Vector{String}}(Vector{Int})
    for word in strs
        key = join(sort(collect(word)))
        push!(swords[key], word)
    end
    res = Vector{Vector{String}}()
    for (k, v) in swords
        push!(res, v)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

