# @lc code=start
using LeetCode

function largest_vals_from_labels(
    vals::Vector{Int}, labels::Vector{Int}, num_wanted::Int, use_limit::Int
)
    dc = Dict{Int,Vector{Int}}()
    for (idx, label) in enumerate(labels)
        v = get!(dc, label, Int[])
        push!(v, vals[idx])
    end
    res = Int[]
    for v in values(dc)
        sort!(v; rev=true)
        append!(res, @view(v[1:min(use_limit, end)]))
    end
    sort!(res; rev=true)
    return sum(res[1:min(num_wanted, end)])
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

