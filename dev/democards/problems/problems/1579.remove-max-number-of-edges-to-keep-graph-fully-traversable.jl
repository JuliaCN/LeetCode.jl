# @lc code=start
using LeetCode

function max_num_edges_to_remove(n, edges::Vector{Vector{Int}})
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
    res = 0
    for edge in edges
        if edge[1] == 3
            (issame_root(edge[2], edge[3])) ? (res += 1) : (merge(edge[2], edge[3]))
        end
    end
    m = n
    father2 = father[:]
    for edge in edges
        if edge[1] == 1
            (issame_root(edge[2], edge[3])) ? (res += 1) : (merge(edge[2], edge[3]))
        end
    end
    if n != 1
        return -1
    end
    father, n = father2, m
    for edge in edges
        if edge[1] == 2
            (issame_root(edge[2], edge[3])) ? (res += 1) : (merge(edge[2], edge[3]))
        end
    end
    if n != 1
        return -1
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

