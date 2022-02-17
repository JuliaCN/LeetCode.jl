# @lc code=start
using LeetCode

# use double pointers
function move_zeros!(nums::Vector{Int})::Nothing
    p2 = 1
    for p1 in 1:length(nums)
        if nums[p1] != 0
            nums[p1], nums[p2] = nums[p2], nums[p1]
            p2 += 1
        end
    end
    return nothing
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

