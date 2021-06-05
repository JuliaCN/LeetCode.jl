# @lc code=start
using LeetCode

function min_operations_1198(logs::Vector{String})
    res = 0
    for lg in logs
        if lg == "../"
            res = max(0, res - 1)
        elseif lg != "./"
            res += 1
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

