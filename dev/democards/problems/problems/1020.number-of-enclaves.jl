# @lc code=start
using LeetCode

# BFS algorithm
function num_of_enclaves_bfs(grid::Vector{Vector{Int}})::Int
    m, n, queue = length(grid), length(grid[1]), Tuple{Int,Int}[]
    (m <= 2 || n <= 2) && return 0
    for i in 1:m ## left and right border
        grid[i][1] == 1 && push!(queue, (i, 1))
        grid[i][n] == 1 && push!(queue, (i, n))
    end
    for i in 2:(n - 1)
        grid[1][i] == 1 && push!(queue, (1, i))
        grid[m][i] == 1 && push!(queue, (m, i))
    end
    walkoff = copy(queue)
    while length(queue) != 0
        i, j = popfirst!(queue)
        for (a, b) in [(i - 1, j), (i + 1, j), (i, j - 1), (i, j + 1)]
            if a >= 1 &&
                b >= 1 &&
                a <= m &&
                b <= n &&
                grid[a][b] != 0 &&
                !((a, b) in walkoff)
                push!(walkoff, (a, b))
                push!(queue, (a, b))
            end
        end
    end
    return sum(sum(line) for line in grid) - length(walkoff)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

