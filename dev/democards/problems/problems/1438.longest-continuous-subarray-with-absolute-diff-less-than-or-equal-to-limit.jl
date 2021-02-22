# @lc code=start
using LeetCode, DataStructures

function longest_subarray(nums::Vector{Int}, limit::Int)
    queMin, queMax = Deque{Int}(), Deque{Int}()
    n = length(nums)
    left = right = 1
    res = 0

    while right <= n
        while !isempty(queMin) && !isempty(queMax) && last(queMax) < nums[right]
            pop!(queMax)
        end
        while !isempty(queMin) && !isempty(queMax) && last(queMin) > nums[right]
            pop!(queMin)
        end
        push!(queMax, nums[right])
        push!(queMin, nums[right])

        while !isempty(queMin) && !isempty(queMax) && first(queMax) - first(queMin) > limit
            if nums[left] == first(queMin)
                popfirst!(queMin)
            end
            if nums[left] == first(queMax)
                popfirst!(queMax)
            end
            left += 1
        end

        res = max(res, right - left + 1)
        right += 1

    end

    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

