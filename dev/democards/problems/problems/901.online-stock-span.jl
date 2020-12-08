# @lc code=start
using LeetCode

Base.@kwdef struct StockSpanner
    history::Vector{Pair{Int,Int}} = []
end

function next!(s::StockSpanner, price::Int)
    span = 1
    while !isempty(s.history) && s.history[end][1] <= price
        span += s.history[end][2]
        pop!(s.history)
    end
    push!(s.history, price => span)
    return span
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

