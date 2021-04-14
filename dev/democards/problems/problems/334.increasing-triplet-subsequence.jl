# @lc code=start
using LeetCode

function increasing_triplet(nums::Vector{Int})
    fst_min = scd_min = nums[1]
    len = length(nums)
    idx = 2
    while idx <= len
        (nums[idx] != fst_min) && break
        idx += 1
    end
    (idx >= len) && return false
    fst_min, scd_min = minmax(fst_min, nums[idx])
    for num in @view(nums[(idx + 1):end])
        (num > scd_min) && return true
        scd_min = num
        fst_min, scd_min = minmax(fst_min, scd_min)
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

