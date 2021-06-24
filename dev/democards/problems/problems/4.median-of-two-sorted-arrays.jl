# @lc code=start
using LeetCode

function find_median_sorted_arrays(nums1::Vector{Int}, nums2::Vector{Int})::Float64
    n = length(nums1) + length(nums2)
    isodd(n) ? nth(nums1, nums2, n ÷ 2 + 1) :
    (nth(nums1, nums2, n ÷ 2) + nth(nums1, nums2, n ÷ 2 + 1)) / 2
end

function nth(a, b, k)
    isempty(a) && return b[k]
    isempty(b) && return a[k]
    ia, ib = cld(length(a), 2), cld(length(b), 2)
    ma, mb = a[ia], b[ib]
    if ia + ib <= k
        ma > mb ? nth(a, @view(b[(ib + 1):end]), k - ib) : ## we can safely ignore the first half in b
        nth(@view(a[(ia + 1):end]), b, k - ia)
    else
        ma > mb ? nth(@view(a[1:(ia - 1)]), b, k) : nth(a, @view(b[1:(ib - 1)]), k)
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

