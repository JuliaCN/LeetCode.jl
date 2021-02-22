# @lc code=start
using LeetCode

function find_shortest_sub_array(nums::Vector{Int})
    mp = Dict{Int,Vector{Int}}()

    for (idx, num) in enumerate(nums)
        if num in keys(mp)
            mp[num][1] += 1
            mp[num][3] = idx
        else
            mp[num] = [1, idx, idx]
        end
    end
    maxn = minlen = 0
    for (cnt, l, r) in values(mp)
        if maxn < cnt
            maxn = cnt
            minlen = r - l + 1
        elseif maxn == cnt
            minlen = min(minlen, r - l + 1)
        end
    end
    minlen
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

