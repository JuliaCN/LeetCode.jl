# @lc code=start
using LeetCode

function max_product(words::Vector{String})
    mp = Dict{UInt32, Int}()
    for word in words
        init = zero(UInt32)
        for c in word
            init |= UInt32(1) << (c - 'a')
        end
        mp[init] = max(length(word), get(mp, init, 0))
    end
    res = 0
    for x in keys(mp), y in keys(mp)
        (x & y == 0) && (res = max(res, mp[x] * mp[y]))
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

