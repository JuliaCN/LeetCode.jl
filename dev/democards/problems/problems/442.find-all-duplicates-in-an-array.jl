# @lc code=start
using LeetCode

function find_duplicates_442(nums::Vector{Int})
    res = Int[]
    for num in nums
        absn = abs(num)
        nums[absn] < 0 ? push!(res, absn) : (nums[absn] = -nums[absn])
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

