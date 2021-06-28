# @lc code=start
using LeetCode

function shopping_offers(price::Vector{Int}, special::Vector{Vector{Int}},
                         needs::Vector{Int})
    mp = Dict{NTuple{length(needs),Int},Int}()
    function rec_search(needs::Vector{Int})
        k = (needs...,)
        mp[k] = price' * needs
        for s in special
            new_need = needs - @view(s[1:(end - 1)])
            any(<(0), new_need) && continue
            mp[k] = min(mp[k], rec_search(new_need) + s[end])
        end
        return mp[k]
    end
    return rec_search(needs)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

