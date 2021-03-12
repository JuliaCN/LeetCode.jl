# @lc code=start
using LeetCode

function is_valid_serialization(preorder::String)::Bool
    p = split(preorder, ",")
    slot = 1

    for node in p
        slot == 0 && return false

        slot = (node == "#") ? (slot - 1) : (slot + 1)
    end

    return slot == 0
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

