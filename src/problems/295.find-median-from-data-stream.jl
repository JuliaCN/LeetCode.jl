# ---
# title: 295. Find Median from Data Stream
# id: problem295
# author: zhwang
# date: 2022-02-26
# difficulty: Hard
# categories: Heap, Design
# link: <https://leetcode.com/problems/find-median-from-data-stream/description/>
# hidden: true
# ---
# 
# Median is the middle value in an ordered integer list. If the size of the list
# is even, there is no middle value. So the median is the mean of the two middle
# value.
# 
# For example,
# 
# `[2,3,4]`, the median is `3`
# 
# `[2,3]`, the median is `(2 + 3) / 2 = 2.5`
# 
# Design a data structure that supports the following two operations:
# 
#   * void addNum(int num) - Add a integer number from the data stream to the data structure.
#   * double findMedian() - Return the median of all elements so far.
# 
# 
# 
# **Example:**
# 
#     
#     
#     addNum(1)
#     addNum(2)
#     findMedian() -> 1.5
#     addNum(3) 
#     findMedian() -> 2
#     
# 
# 
# 
# **Follow up:**
# 
#   1. If all integer numbers from the stream are between 0 and 100, how would you optimize it?
#   2. If 99% of all integer numbers from the stream are between 0 and 100, how would you optimize it?
# 
# 
## @lc code=start
using LeetCode

using DataStructures

Base.@kwdef struct MedianFinder
    maxheap::BinaryMaxHeap{Int} = BinaryMaxHeap{Int}()
    minheap::BinaryMinHeap{Int} = BinaryMinHeap{Int}()
end
function Base.show(io::IO, heap::MedianFinder)
    return print(io, "$(heap.maxheap.valtree):max -- min:$(reverse(heap.minheap.valtree))")
end

function add_num!(heap::MedianFinder, num::Int)
    ## maximal element of maxheap <= minimal element of minheap
    ## length of maxheap <= length of minheap
    hi, ha = heap.minheap, heap.maxheap
    if length(ha) < length(hi)
        ## e.g. [2]--[4,5] =6> [2]--[4,5,6] => [2,4]--[5,6]
        push!(hi, num)
        push!(ha, pop!(hi))
    else
        ## e.g. [4]--[5] =2> [2,4]--[5] => [2]--[4,5]
        push!(ha, num)
        push!(hi, pop!(ha))
    end
    return nothing
end

function find_median(heap::MedianFinder)::Float64
    hi, ha = heap.minheap, heap.maxheap
    return length(hi) == length(ha) ? (first(hi) + first(ha)) / 2 : first(hi)
end
## @lc code=end
