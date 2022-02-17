# @lc code=start
using LeetCode

# binary search + merge sort
function squares_of_a_sorted_array(nums::Vector{Int})::Vector{Int}
    n = length(nums)
    # binary search
    left, right = 1, n
    while left <= right
        mid = (right + left) >> 1
        if nums[mid] < 0
            left = mid + 1
        else
            right = mid - 1
        end
    end
    # merge sort
    i, j, res = right, left, Int[]
    while i >= 1 && j <= n
        if nums[i]^2 < nums[j]^2
            push!(res, nums[i]^2)
            i -= 1
        else
            push!(res, nums[j]^2)
            j += 1
        end
    end
    return vcat(res, (i == 0) ? nums[j:end] .^ 2 : nums[i:-1:1] .^ 2)
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

