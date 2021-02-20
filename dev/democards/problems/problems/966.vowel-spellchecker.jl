# @lc code=start
using LeetCode

function spellchecker(wordlist::Vector{String}, queries::Vector{String})
    wls = Set(wordlist)
    d1 = DefaultDict{String,Vector{Int}}(Vector{Int})
    d2 = deepcopy(d1)
    for (idx, word) in enumerate(wordlist)
        lc = lowercase(word)
        push!(d1[lc], idx)
        push!(d2[replace(lc, r"[eiou]" => "a")], idx)
    end
    len = length(wordlist)
    res = fill("", length(queries))
    for (idx, q) in enumerate(queries)
        lc = lowercase(q)
        lcy = replace(lc, r"[eiou]" => "a")
        if q ∈ wls
            res[idx] = q
            continue
        elseif get(d1, lc, nothing) !== nothing
            res[idx] = wordlist[d1[lc][1]]
        elseif get(d2, lcy, nothing) !== nothing
            res[idx] = wordlist[d2[lcy][1]]
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

