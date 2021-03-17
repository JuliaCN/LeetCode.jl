# @lc code=start
using LeetCode

function spiral_order(matrix::Vector{Vector{Int}})::Vector{Int}
    res = Int[]
    while !isempty(matrix)
        for each in popfirst!(matrix)
            push!(res, each)
        end

        if !isempty(matrix) && !isempty(matrix[1])
            for row in matrix
                push!(res, pop!(row))
            end
        end

        if !isempty(matrix)
            for each in pop!(matrix)[end:-1:1]
                push!(res, each)
            end
        end

        if !isempty(matrix) && !isempty(matrix[1])
            for row in matrix[end:-1:1]
                push!(res, popfirst!(row))
            end
        end
    end

    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

