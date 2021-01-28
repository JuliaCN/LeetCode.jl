# @lc code=start
using LeetCode

function is_bipartite(graph::Vector{Vector{Int}})
    for edge in graph
        edge .+= 1
    end
    color = fill(0, length(graph))
    q = Queue{Int}()
    for i in 1:length(graph)
        if color[i] != 0
            continue
        end
        color[i] = 1
        enqueue!(q, i)
        while !isempty(q)
            root = dequeue!(q)
            for neighbor in graph[root]
                if color[neighbor] == 0
                    color[neighbor] = -color[root]
                    enqueue!(q, neighbor)
                elseif color[neighbor] == color[root]
                    return false
                end
            end
        end
    end
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

