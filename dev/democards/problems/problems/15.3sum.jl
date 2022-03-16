# @lc code=start
using LeetCode

function three_sum!(nums::Vector{Int})::Vector{NTuple{3,Int}}
    sort!(nums)
    n, res, pre = length(nums), NTuple{3,Int}[], NaN
    for (i, first) in enumerate(nums)
        first == pre && continue
        pre, left, right = first, i + 1, n
        while left < right
            total = nums[left] + nums[right]
            if total < -first
                left += 1
            elseif total > -first
                right -= 1
            else
                push!(res, (first, nums[left], nums[right]))
                pos = findfirst(!=(nums[left]), @view(nums[(left + 1):right]))
                isnothing(pos) ? break : left += pos
                pos = findfirst(!=(nums[right]), @view(nums[(right - 1):-1:left]))
                isnothing(pos) ? break : right -= pos
            end
        end
    end
    return res
end
three_sum(nums::Vector{Int}) = three_sum!(copy(nums))

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

