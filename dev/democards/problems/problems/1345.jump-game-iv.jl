# @lc code=start
using LeetCode

function min_jumps_1345(arr::Vector{Int})::Int
    # data initialize
    n, step = length(arr), 0
    nums = Dict{Int,Set}(x => Set{Int}() for x in Set{Int}(arr))
    for (i, val) in enumerate(arr)
        push!(nums[val], i)
    end
    # BFS Search
    up_nums, up_inds, inds = Set{Int}([arr[1]]), Set{Int}([1]), Set{Int}([0, 1, n + 1])
    while !(n in up_inds)
        down_inds = Set{Int}()
        # indexs by numbers
        for num in up_nums
            union!(down_inds, nums[num])
        end
        # nearby indexs
        for i in up_inds
            push!(down_inds, i - 1)
            push!(down_inds, i + 1)
        end
        # remove extra indexs
        for i in down_inds
            i in inds && delete!(down_inds, i)
        end
        up_inds, up_nums = down_inds, Set{Int}(arr[i] for i in down_inds)
        union!(inds, up_inds)
        step += 1
    end
    return step
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

