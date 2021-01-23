# @lc code=start
using LeetCode

function make_connected(n::Int, connections::Vector{Vector{Int}})
    if length(connections) < n - 1
        return - 1
    end
    find_root(u::Int)::Int = (father[u] == u) ? u : (father[u] = find_root(father[u]))
    issame_root(u::Int, v::Int)::Bool = find_root(u) == find_root(v)
    function merge(u::Int, v::Int)
        u_root = find_root(u)
        v_root = find_root(v)
        if u_root != v_root
            n -= 1
            father[u_root] = v_root
        end
    end
    father = collect(1:n)
    for connection in connections
        merge(connection[1], connection[2])
    end
    return n - 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

