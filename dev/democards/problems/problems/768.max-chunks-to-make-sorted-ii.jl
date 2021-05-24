# @lc code=start
using LeetCode

function max_chunks_to_sorted(arr::Vector{Int})::Int
    count = DefaultDict(1)
    non_zeros, res = 0, 0

    for (a, b) in zip(arr, sort(arr))
        count[a] += 1
        if count[a] == 0
            non_zeros -= 1
        elseif count[a] == 1
            non_zeros += 1
        end

        count[b] -= 1
        if count[b] == 0
            non_zeros -= 1
        elseif count[b] == -1
            non_zeros += 1
        end

        (non_zeros == 0) && (res += 1)
    end

    return res
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

