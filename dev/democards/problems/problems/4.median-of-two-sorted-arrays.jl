# @lc code=start
using LeetCode

function find_median_sorted_arrays(nums1::Vector{Int}, nums2::Vector{Int})::Float64
    n = length(nums1) + length(nums2)
    if isodd(n)
        nth(nums1, nums2, n ÷ 2 + 1)
    else
        (nth(nums1, nums2, n ÷ 2) + nth(nums1, nums2, n ÷ 2 + 1)) / 2
    end
end

function nth(a, b, k)
    if isempty(a)
        b[k]
    elseif isempty(b)
        a[k]
    else
        ia, ib = cld(length(a), 2), cld(length(b), 2)
        ma, mb = a[ia], b[ib]
        if ia + ib <= k
            if ma > mb
                # we can safely ignore the first half in b
                nth(a, @view(b[(ib + 1):end]), k - ib)
            else
                nth(@view(a[(ia + 1):end]), b, k - ia)
            end
        else
            if ma > mb
                nth(@view(a[1:(ia - 1)]), b, k)
            else
                nth(a, @view(b[1:(ib - 1)]), k)
            end
        end
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

