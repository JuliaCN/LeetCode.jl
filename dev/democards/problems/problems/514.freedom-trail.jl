# @lc code=start
using LeetCode

function find_rotate_steps(ring::String, key::String)
    lenr, lenk = length(ring), length(key)
    dp1 = fill(typemax(Int), lenr)
    dp2 = dp1[:]
    mp = [Int[] for i in 1:26]
    for i in 1:lenr
        push!(mp[ring[i] - 'a' + 1], i)
    end
    for idx in mp[key[1] - 'a' + 1]
        dp1[idx] = min(idx - 1, lenr - idx)
    end
    for i in 2:lenk
        for idx1 in mp[key[i] - 'a' + 1]
            for idx2 in mp[key[i - 1] - 'a' + 1]
                dp2[idx1] = min(
                    dp2[idx1], dp1[idx2] + min(abs(idx2 - idx1), lenr - abs(idx2 - idx1))
                )
            end
        end
        dp1, dp2 = dp2, dp1
        dp2 .= typemax(Int)
    end
    return minimum(dp1) + lenk
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

