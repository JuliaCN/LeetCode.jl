# @lc code=start
using LeetCode
using DataStructures

function avoid_flood(rains::Vector{Int})::Vector{Int}
    n = length(rains)
    options = [1 for _ = 1:n]
    seen = Dict{Int,Int}()
    dry_days = Vector{Int}()

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
                pos = searchsortedfirst(dry_days, seen[lake])
                options[dry_days[pos]] = lake
                # delete the dry_day we have used
                deleteat!(dry_days, pos)
            end

            seen[lake] = day
        end
    end

    return options

    # ## for bigger testcase, the following code is much better
    # n = length(rains)
    # options = fill(1, n)
    # seen = Dict{Int,Int}()
    # dry_days = SortedSet{Int}()

    # for (day, lake) in enumerate(rains)
    #     ## if no rain this day, record the day
    #     if rains[day] == 0
    #         push!(dry_days, day)
    #         ## if rain this day
    #     else
    #         options[day] = -1
    #         ## if lake has been rained
    #         if haskey(seen, lake)
    #             (isempty(dry_days) || last(dry_days) < seen[lake]) && return []
    #             semitoken = searchsortedfirst(dry_days, seen[lake])
    #             options[deref((dry_days, semitoken))] = lake
    #             ## delete the dry_day we have used
    #             delete!((dry_days, semitoken))
    #         end

    #         seen[lake] = day
    #     end
    # end

    # return options
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

