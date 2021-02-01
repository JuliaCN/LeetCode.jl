# @lc code=start
using LeetCode

function orderly_queue(S::String, K::Int)
    if K == 1
        res = S
        for i in 2:length(S)
            res = min(res, S[i:end] * S[1:i-1])
        end
        return res
    end
    c_units = codeunits(S)[:]
    return c_units |> sort! |> String
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

