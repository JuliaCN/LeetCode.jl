# @lc code=start
using LeetCode

function network_delay_time(times::Vector{Vector{Int}}, n::Int, k::Int)
    graph = [Tuple{Int,Int}[] for _ in 1:n]
    for (u, v, t) in times
        push!(graph[u], (v, t))
    end
    pq = PriorityQueue{Int,Int}([(k, 0)])
    res = Int[]
    while !isempty(pq)
        node, d = dequeue_pair!(pq)
        for (neb, d1) in graph[node]
            pq[neb] = min(get(pq, neb, typemax(Int)), d + d1)
        end
        push!(res, d)
    end
    return length(res) == n ? maximum(res) : -1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

