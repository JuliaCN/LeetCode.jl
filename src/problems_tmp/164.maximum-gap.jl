function maximum_gap(nums::Vector{Int})::Int
    sort!(nums)
    return length(nums) < 2 ? 0 : maximum(@view(nums[2:end]) - @view(nums[1:(end - 1)]))
end
