# @lc code=start
using LeetCode

function summary_ranges(nums::Vector{Int})::Vector{String}
    if length(nums) < 1
        return String[]
    end
    res = String[]
    bg = ed = nums[1]
    for i in 2:length(nums)
        if nums[i] - ed == 1
            ed += 1
        else
            (bg == ed) ? (push!(res, "$(bg)")) : (push!(res, "$bg->$ed"))
            bg = ed = nums[i]
        end
    end
    (bg == ed) ? (push!(res, "$(bg)")) : (push!(res, "$bg->$ed"))
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

