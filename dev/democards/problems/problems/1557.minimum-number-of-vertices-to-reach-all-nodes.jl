# @lc code=start
using LeetCode

function find_smallest_set_of_vertices(n::Int, edges::Vector{Vector{Int}})::Vector{Int}
    set = Set(edge[2] for edge in edges)
    res = Int[]
    for i in 0:n-1
        (i in set) || push!(res, i)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

