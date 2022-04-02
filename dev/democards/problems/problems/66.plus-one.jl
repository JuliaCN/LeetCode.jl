# @lc code=start
using LeetCode

# use build-in function
plus_one(nums::Vector{Int}) = reverse!(digits(foldl((i, j) -> 10 * i + j, nums) + 1))
# method 2
function digits_plus_one(nums::Vector{Int})::Vector{Int}
    pos = findlast(!=(9), nums)
    isnothing(pos) && return append!([1], zeros(Int, length(nums)))
    return cat(
        @view(nums[1:(pos - 1)]), nums[pos] + 1, zeros(Int, length(nums) - pos); dims=1
    )
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

