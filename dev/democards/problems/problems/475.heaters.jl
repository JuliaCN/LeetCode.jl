# @lc code=start
using LeetCode

function find_radius(houses::Vector{Int}, heaters::Vector{Int})::Int
    sort!(heaters)
    heaters = [-Inf; heaters; Inf]
    res = 0
    for house in houses
        loc = searchsortedfirst(heaters, house)
        res = max(res, min(house - heaters[loc - 1], heaters[loc] - house))
    end

    return convert(Int, res)
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

