# @lc code=start
using LeetCode

using DataStructures

Base.@kwdef struct MedianFinder
    maxheap::BinaryMaxHeap{Int} = BinaryMaxHeap{Int}()
    minheap::BinaryMinHeap{Int} = BinaryMinHeap{Int}()
end

function add_num!(heap::MedianFinder, num::Int)
    # maximal element of maxheap <= minimal element of minheap
    # length of maxheap <= length of minheap
    hi, ha = heap.minheap, heap.maxheap
    if length(ha) < length(hi)
        # e.g. [2]--[4,5] =6> [2]--[4,5,6] => [2,4]--[5,6]
        push!(hi, num)
        push!(ha, pop!(hi))
    else
        # e.g. [4]--[5] =2> [2,4]--[5] => [2]--[4,5]
        push!(ha, num)
        push!(hi, pop!(ha))
    end
    return nothing
end

function find_median(heap::MedianFinder)::Float64
    hi, ha = heap.minheap, heap.maxheap
    return length(hi) == length(ha) ? (first(hi) + first(ha)) / 2 : first(hi)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

