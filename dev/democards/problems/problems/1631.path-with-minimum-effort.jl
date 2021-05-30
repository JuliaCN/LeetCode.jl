# @lc code=start
using LeetCode

function minimum_effort_path(heights::Vector{Vector{Int}})
    m, n = length(heights), length(heights[1])
    ds = IntDisjointSets(m * n)
    map = SortedMultiDict{Int, Pair{Int, Int}}()
    for i in 1:m-1
        for j in 1:n-1
            insert!(map, abs(heights[i][j] - heights[i+1][j]), Pair((i - 1) * n + j, i * n + j))
            insert!(map, abs(heights[i][j] - heights[i][j+1]), Pair((i - 1) * n + j, (i - 1) * n + j + 1))
        end
    end
    for i in 1:m-1
        insert!(map, abs(heights[i][n] - heights[i+1][n]), Pair(i * n, (i + 1) * n))
    end
    for j in 1:n-1
        insert!(map, abs(heights[m][j] - heights[m][j+1]), Pair((m-1) * n + j, (m-1) * n + j + 1))
    end
    for (dist, edge) in map
        union!(ds, edge.first, edge.second)
        if in_same_set(ds, 1, m * n)
            return dist
        end
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

