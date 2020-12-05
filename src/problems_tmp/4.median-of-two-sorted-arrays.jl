function find_median_sorted_arrays(nums1::Vector{Int}, nums2::Vector{Int})::Float64
    n = length(nums1) + length(nums2)
    if isodd(n)
        kth(nums1, nums2, n ÷ 2 + 1)
    else
        (kth(nums1, nums2, n ÷ 2) + kth(nums1, nums2, n ÷ 2 + 1)) / 2
    end
end

function kth(a, b, k)
    if isempty(a)
        b[k]
    elseif isempty(b)
        a[k]
    end

    ia, ib = length(a) ÷ 2, length(b) ÷ 2
    ma, mb = a[ia], b[ib]

    ## when k is bigger than the sum of a and b's median indices
    if ia + ib < k
        ## if a's median is bigger than b's, b's first half doesn't include k
        if ma > mb
            kth(a, @view(b[(ib + 1): end]), k - ib)
        else
            kth(@view(a[(ia + 1): end]), b, k - ia)
        end
    ## when k is smaller than the sum of a and b's indices
    else
        ## if a's median is bigger than b's, a's second half doesn't include k
        if ma > mb
            kth(@view(a[1: (ia - 1)]), b, k)
        else
            kth(a, @view(b[1: (ib - 1)]), k)
        end
    end

end
