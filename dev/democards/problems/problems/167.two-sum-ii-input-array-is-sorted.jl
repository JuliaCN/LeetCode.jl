# @lc code=start
using LeetCode

# using double pointers
function two_sum_167(numbers::Vector{Int}, target::Int)::Vector{Int}
    left, right = 1, length(numbers)
    while left < right
        num = numbers[left] + numbers[right]
        if num > target
            right -= 1
        elseif num < target
            left += 1
        else
            return [left, right]
        end
    end
    [-1, -1]
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

