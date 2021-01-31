# @lc code=start
using LeetCode

using DataStructures
function largest_sum_after_k_negations(A::Vector{Int}, K::Int)
    total = sum(A)
    pq = BinaryMinHeap(A)
    for _ in 1:K
        m = pop!(pq)
        total -= 2 * m
        push!(pq, -m)
    end
    total
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

