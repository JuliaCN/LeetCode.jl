# @lc code=start
using LeetCode

function find_latest_step(arr::Vector{Int}, m::Int)
    pos_dict = Dict{Int, Int}()
    neg_dict = Dict{Int, Int}()
    cnt = 0
    res = -1
    for (idx, num) in enumerate(arr)
        pos_dict[num] = num
        neg_dict[num] = num
        if haskey(pos_dict, num + 1)
            (pos_dict[num + 1] - num == m) && (cnt -= 1)
            tmp = pop!(pos_dict, num + 1)
            pos_dict[num] = tmp
            neg_dict[tmp] = num
        end
        if haskey(neg_dict, num - 1)
            (num - neg_dict[num - 1] == m) && (cnt -= 1)
            tmp = pop!(neg_dict, num - 1)
            neg_dict[num] = tmp
            pos_dict[tmp] = num
        end
        pos_dict[neg_dict[num]], neg_dict[pos_dict[num]] = pos_dict[num], neg_dict[num]
        (pos_dict[neg_dict[num]] - neg_dict[num] + 1 == m) && (cnt += 1)
        (cnt > 0) && (res = idx)
        if pos_dict[neg_dict[num]] != num
            pop!(pos_dict, num)
            pop!(neg_dict, num)
        end
    end
    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

