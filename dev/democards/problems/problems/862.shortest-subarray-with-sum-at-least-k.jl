# @lc code=start
using LeetCode

function shortest_subarray(A::Vector{Int}, K::Int)
    dq = Deque{Int}()
    prex = fill(0, length(A) + 1)
    cumsum!(@view(prex[2:end]), A)
    res = typemax(Int)
    for i in 1:length(prex)
        while !isempty(dq) && prex[i] - prex[first(dq)] ≥ K
            res = min(res, i - first(dq))
            popfirst!(dq)
        end
        while !isempty(dq) && prex[i] ≤ prex[last(dq)]
            pop!(dq)
        end
        push!(dq, i)
    end
    res == typemax(Int) ? -1 : res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

