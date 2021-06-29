# @lc code=start
using LeetCode

function maximum_swap670(nums::Int)
    dgs = digits(nums)
    for i in 1:length(dgs)
        cur = @view(dgs[i:end])
        max_idx = argmax(cur)
        max_idx == lastindex(cur) && continue
        dgs[end], dgs[max_idx] = dgs[max_idx], dgs[end]
        break
    end
    return [10 .^ (0:length(dgs)-1);]' * dgs
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

