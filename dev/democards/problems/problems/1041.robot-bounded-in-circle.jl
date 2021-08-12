# @lc code=start
using LeetCode

function is_robot_bounded(instructions::String)::Bool
    x, y = 0, 0
    dirs = ((0, 1), (1, 0), (0, -1), (-1, 0))
    st = 1
    for ch in instructions
        if ch == 'G'
            x += dirs[st][1]
            y += dirs[st][2]
        elseif ch == 'L'
            st = mod1(st + 1, 4)
        else
            st = mod1(st - 1, 4)
        end
    end
    return (x, y) == (0, 0) || st != 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

