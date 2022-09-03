# @lc code=start
using LeetCode

function is_robot_bounded(instructions::String)::Bool
    pos = CartesianIndex(0, 0)
    dirs = CartesianIndex.([(0, 1), (1, 0), (0, -1), (-1, 0)])
    st = 1
    for ch in instructions
        if ch == 'G'
            pos += dirs[st]
        else
            st = mod1(st + (ch == 'R' ? 1 : -1), 4)
        end
    end
    return pos.I == (0, 0) || st != 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

