# @lc code=start
using LeetCode

function length_of_LIS(nums::Vector{Int})
    f = [first(nums)]
    for num in @view(nums[2:end])
        if num > f[end]
            push!(f, num)
        else
            f[searchsortedfirst(f, num)] = num
        end
    end
    length(f)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

