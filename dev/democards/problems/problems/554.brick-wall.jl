# @lc code=start
using LeetCode

function least_bricks(wall::Vector{Vector{Int}})
    tb = Dict{Int, Int}()
    for row in wall
        acc = 0
        for i in @view(row[1:end-1])
            acc += i
            haskey(tb, acc) ? tb[acc] += 1 : tb[acc] = 1
        end
    end
    isempty(tb) && return length(wall)
    length(wall) - maximum(values(tb))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

