# @lc code=start
using LeetCode
using BisectPy

function avoid_flood(rains::Vector{Int})::Vector{Int}
    n = length(rains)
    options = [1 for _ = 1:n]
    seen = Dict{Int,Int}()
    dry_days = []

    for (day, lake) in enumerate(rains)
        # if no rain this day, record the day
        if rains[day] == 0
            push!(dry_days, day)
            # if rain this day
        else
            options[day] = -1
            # if lake has been rained
            if haskey(seen, lake)
                (isempty(dry_days) || dry_days[end] < seen[lake]) && return []
                pos = bisect_left(dry_days, seen[lake])
                options[dry_days[pos]] = lake
                # delete the dry_day we have used
                deleteat!(dry_days, pos)
            end

            seen[lake] = day
        end
    end

    return options
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

