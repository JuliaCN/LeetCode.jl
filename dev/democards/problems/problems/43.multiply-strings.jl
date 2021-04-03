# @lc code=start
using LeetCode

function trap(height::Vector{Int})::Int32
    left, right = 1, length(height)
    left_max, right_max = 0, 0
    res = 0

    while left <= right
        if height[left] < height[right]
            if (span = left_max - height[left]) > 0
                res += span
            else
                left_max = height[left]
            end

            left += 1
        else
            if (span = right_max - height[right]) > 0
                res += span
            else
                right_max = height[right]
            end

            right -= 1
        end
    end

    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

