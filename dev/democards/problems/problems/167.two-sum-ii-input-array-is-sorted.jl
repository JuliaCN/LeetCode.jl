# @lc code=start
using LeetCode

# use double pointers
function two_sum_167(numbers::Vector{Int}, target::Int)::Vector{Int}
    left, right = 1, length(numbers)
    while left < right
        if numbers[left] + numbers[right] > target
            right -= 1
        elseif numbers[left] + numbers[right] < target
            left += 1
        else
            return [left, right]
        end
    end
    return [-1, -1]
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

