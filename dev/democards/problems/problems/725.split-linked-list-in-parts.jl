# @lc code=start
using LeetCode

split_list_to_parts(::Nothing, k::Int)::Vector{Union{ListNode{Int},Nothing}} =
    fill(nothing, k)

function split_list_to_parts(
    head::ListNode{Int}, k::Int
)::Vector{Union{ListNode{Int},Nothing}}
    p = head
    len = length_of_list(head)
    first_m = mod(len, k)
    base_n = len ÷ k
    res = Vector{Union{ListNode{Int},Nothing}}(undef, k)
    for i in 1:k
        for _ in 1:(base_n - (i > first_m))
            p = p.next
        end
        res[i] = head
        if !isnothing(p)
            head = p.next
            p.next = nothing
        end
        p = head
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

