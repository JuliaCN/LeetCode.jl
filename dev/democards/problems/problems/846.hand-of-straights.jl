# @lc code=start
using LeetCode

function is_n_straight_hand(hand::Vector{Int}, group_size::Integer)::Bool
    length(hand) % group_size == 0 || return false
    cntr = counter(hand)
    while !isempty(cntr)
        k = minimum(keys(cntr))
        v = cntr[k]
        for i in (0:group_size-1) .+ k
            cntr[i] -= v
            cntr[i] < 0 && return false
            cntr[i] == 0 && pop!(cntr.map, i)
        end
    end
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

