# @lc code=start
using LeetCode

function circular_array_loop(nums::Vector{Int})
    len = length(nums)
    for i in 1:length(nums)
        if nums[i] == -2000 || nums[i] == 2000
            continue
        end
        j = mod1(i + nums[i], len)
        lst = i
        nums[i] = 2000 * sign(nums[i])
        while true
            if nums[i] * nums[j] < 0 || j == lst
                break
            elseif abs(nums[j]) == 2000 && j ≥ i
                return true
            end
            nums[j], j, lst = 2000 * sign(nums[j]), mod1(nums[j] + j, len), j
        end
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

