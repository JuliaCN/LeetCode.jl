# @lc code=start
using LeetCode

function find_cheapest_price(n::Int, flights::Vector{Vector{Int}}, src::Int, dst::Int, K::Int)
    graph = [Dict{Int, Int}() for i in 1:n]
    for flight in flights
        graph[flight[1]][flight[2]] = flight[3]
    end
    cost = fill(typemax(Int) >> 1, n)
    cost[src] = 0
    changed = [src]
    for i in 1:K+1
        tmp = Int[]
        for new_s in changed
            for (s_to_t, st_cost) in graph[new_s]
                if cost[s_to_t] > st_cost + cost[new_s]
                    cost[s_to_t] = st_cost + cost[new_s]
                    push!(tmp, s_to_t)
                end
            end
        end
        changed = tmp
    end
    return (cost[dst] == typemax(Int) >> 1) ? -1 : cost[dst]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

