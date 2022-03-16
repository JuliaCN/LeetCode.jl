# @lc code=start
using LeetCode

function find_restaurant(list1::Vector{String}, list2::Vector{String})::Vector{String}
    dic = Dict(st => (i - 1) for (i, st) in enumerate(list1))
    cost, res = typemax(1), String[]
    for (i, s) in enumerate(list2)
        !haskey(dic, s) && continue
        newcost = i - 1 + dic[s]
        if newcost < cost
            cost, res = newcost, [s]
        elseif newcost == cost
            push!(res, s)
        end
    end
    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

