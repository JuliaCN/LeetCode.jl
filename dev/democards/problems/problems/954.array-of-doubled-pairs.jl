# @lc code=start
using LeetCode

# add your code here:
function canReorderDoubled(arr::Vector{Int})::Bool
    cnt = counter(arr)
    for a in sort!(arr; by=abs)
        cnt[a] == 0 && continue
        cnt[2a] == 0 && return false
        cnt[2a] -= 1
        cnt[a] -= 1
    end
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

