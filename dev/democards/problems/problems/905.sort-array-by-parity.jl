# @lc code=start
using LeetCode

function sort_array_by_parity!(arr::Vector{Int})
    i, j = 1, length(arr)
    while i < j
        if iseven(arr[i])
            i += 1
        else
            arr[i], arr[j] = arr[j], arr[i]
            j -= 1
        end
    end
    return arr
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

