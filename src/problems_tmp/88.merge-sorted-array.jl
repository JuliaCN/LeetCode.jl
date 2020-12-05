function merge_sorted_array(
    nums1::AbstractVector{Int}, m::Int, nums2::AbstractVector{Int}, n::Int
)::Nothing
    i = m + n
    while m > 0 && n > 0
        if nums1[m] > nums2[n]
            nums1[i] = nums1[m]
            m -= 1
        else
            nums1[i] = nums2[n]
            n -= 1
        end
        i -= 1
    end

    while n > 0
        nums1[i] = nums2[n]
        n -= 1
    end

    return nothing
end
