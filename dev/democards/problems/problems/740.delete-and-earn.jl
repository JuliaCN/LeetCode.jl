# @lc code=start
using LeetCode

function delete_and_earn(nums::Vector{Int})
    if length(nums) == 0
        return 0
    elseif length(nums) == 1
        return nums[1]
    end
    cntr = fill(0, maximum(nums))
    for num in nums
        cntr[num] += num
    end
    fst, scd = cntr[1], max(cntr[2], cntr[1])
    for i in 3:length(cntr)
        fst, scd = scd, max(fst + cntr[i], scd)
    end
    return scd
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

