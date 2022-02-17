# @lc code=start
using LeetCode

function intersection_of_arrays(nums1::Vector{Int}, nums2::Vector{Int})::Vector{Int}
    nums1, nums2 = sort(nums1), sort(nums2)
    n1, n2 = length(nums1), length(nums2)
    i1, i2, res = 1, 1, Int[]
    while i1 <= n1 && i2 <= n2
        if nums1[i1] > nums2[i2]
            i2 += 1
        elseif nums1[i1] < nums2[i2]
            i1 += 1
        else
            push!(res, nums1[i1])
            i1 += 1
            i2 += 1
        end
    end
    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

