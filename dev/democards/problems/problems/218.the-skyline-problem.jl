# @lc code=start
using LeetCode

function get_skyline(buildings::Vector{Vector{Int}})
    all = Tuple{Int, Int}[]
    res = Tuple{Int, Int}[]
    @inbounds for b in buildings
        push!(all, (b[1], -b[3]))
        push!(all, (b[2], b[3]))
    end
    sort!(all)

    heights = SortedMultiDict{Int, Nothing}()
    push!(heights, 0 => nothing)
    lst = (0, 0)
    for p in all
        p[2] < 0 ? push!(heights, -p[2] => nothing) : delete!((heights, searchsortedfirst(heights, p[2])))
        mh = last(heights).first
        if lst[2] != mh
            lst = (p[1], mh)
            push!(res, lst)
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

