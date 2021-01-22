# @lc code=start
using LeetCode

function max_distance(position::Vector{Int}, m::Int)
    sort!(position)
    lowest, highest = 1, position[end] - position[1]
    while lowest < highest
        mid = (highest + lowest + 1) ÷ 2
        left_pos = position[1]
        left_num = m - 1
        for pos in position
            if pos - left_pos >= mid
                left_pos = pos
                left_num -= 1
                if left_num == 0
                    break
                end
            end
        end
        if left_num == 0
            lowest = mid
        else
            highest = mid - 1
        end
    end
    lowest
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

