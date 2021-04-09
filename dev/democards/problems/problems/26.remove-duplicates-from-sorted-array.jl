# @lc code=start
using LeetCode

function remove_duplicates1!(nums::Vector{Int})::Int
    j = 2
    for i in 2: length(nums)
        if nums[i] != nums[j - 1]
            nums[j] = nums[i]
            j += 1
        end
    end

    return j - 1
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

