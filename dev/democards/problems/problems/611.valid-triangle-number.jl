# @lc code=start
using LeetCode

function triangle_number(nums::Vector{Int})
    res, len = 0, length(nums)
    sort!(nums)
    @inbounds for i in 1:len-2
        nums[i] == 0 && continue
        k = i + 2
        for j in i+1:len-1
            while k <= len && nums[i] + nums[j] > nums[k]; k += 1; end
            res += k - j - 1
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

