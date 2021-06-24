# @lc code=start
using LeetCode

function find_min_difference(time_points::Vector{String})
    ttp = Tuple{Int, Int}[]
    for t in time_points
        st = split(t, ':')
        push!(ttp, (parse(Int, st[1]), parse(Int, st[2])))
    end
    sort!(ttp)
    push!(ttp, (ttp[1][1] + 24, ttp[1][2]))
    return minimum((ttp[i][1] - ttp[i-1][1]) * 60 + (ttp[i][2] - ttp[i-1][2]) for i in 2:length(ttp))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

