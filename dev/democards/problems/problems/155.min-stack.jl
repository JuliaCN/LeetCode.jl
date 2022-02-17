# @lc code=start
using LeetCode
Base.@kwdef struct MinStack{V<:Number}
    nums::Vector{V} = Int[]
    min_nums::Vector{V} = Int[]
end

function Base.push!(stack::MinStack, val::Int)::Nothing
    Base.push!(stack.nums, val)
    if isempty(stack.min_nums) || val <= stack.min_nums[end]
        Base.push!(stack.min_nums, val)
    end
    return nothing
end

function Base.pop!(stack::MinStack)::Nothing
    if Base.pop!(stack.nums) == stack.min_nums[end]
        Base.pop!(stack.min_nums)
    end
    return nothing
end

top(stack::MinStack)::Int = stack.nums[end]

get_min(stack::MinStack)::Int = stack.min_nums[end]
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

