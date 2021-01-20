# @lc code=start
using LeetCode

function min_subarray_len(s::Int, nums::Vector{Int})
    left = right = 1
    res = typemax(Int)
    len = length(nums)
    Σ = nums[1]
    while right <= len
        if Σ == s
            res = min(res, right - left + 1)
            Σ -= nums[left]
            left += 1
            right += 1
            (right <= len) && (Σ += nums[right])
        elseif Σ < s
            right += 1
            (right <= len) && (Σ += nums[right])
        else
            Σ -= nums[left]
            left += 1
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

