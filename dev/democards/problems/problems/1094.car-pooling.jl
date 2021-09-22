# @lc code=start
using LeetCode

function car_pooling(trips::Vector{Vector{Int}}, cap::Int)::Bool
    sort!(trips; by = x -> x[2])
    hp = Tuple{Int, Int}[]
    res = 0
    for trip in trips
        heappush!(hp, (trip[3], trip[1]))
        res += trip[1]
        hp[1][1] <= trip[2] && (res -= heappop!(hp)[1])
        res > cap && return false
    end
    true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

