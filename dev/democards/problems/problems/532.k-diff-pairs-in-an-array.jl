# @lc code=start
using LeetCode

function find_kpairs(nums::Vector{Int}, k::Int)
    cntr = counter(nums)
    res = 0
    if k > 0
        for (ky, vl) in cntr
            res += (ky - k in keys(cntr)) ? 1 : 0
        end
    else
        for (ky, vl) in cntr
            res += ifelse(vl > 1, 1, 0)
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

