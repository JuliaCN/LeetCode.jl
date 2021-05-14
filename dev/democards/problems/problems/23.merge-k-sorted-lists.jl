# @lc code=start
using LeetCode

Base.isless(l1::ListNode, l2::ListNode) = l1.val < l2.val

function merge_k_lists(lists::Vector{T}) where {T<:Union{ListNode{Int},Nothing}}
    pq = BinaryMinHeap{ListNode{Int}}()
    for l in lists
        isnothing(l) || push!(pq, l)
    end
    res = ListNode{Int}()
    p = res
    while !isempty(pq)
        tp_list = pop!(pq)
        p = p.next = tp_list
        tp_list = tp_list.next
        isnothing(tp_list) || push!(pq, tp_list)
    end
    return res.next
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

