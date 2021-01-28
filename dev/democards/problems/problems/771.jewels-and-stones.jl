# @lc code=start
using LeetCode

function num_jewels_in_stones(jewels::String, stones::String)
    mp = fill(0, 128)
    for i in codeunits(jewels)
        mp[i] = 1
    end
    sum(mp[i] for i in codeunits(stones))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

