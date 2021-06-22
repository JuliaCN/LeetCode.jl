# @lc code=start
using LeetCode

function number_of_boomerangs(points::Vector{Vector{Int}})::Int
    res = 0
    for p in points
        distance_frequency = DefaultDict(0)
        for q in points
            p == q && continue
            dis = (p[1] - q[1])^2 + (p[2] - q[2])^2
            distance_frequency[dis] += 1
        end

        for k in values(distance_frequency)
            k > 1 && (res += k * (k - 1))
        end
    end

    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

