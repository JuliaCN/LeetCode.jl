# @lc code=start
using LeetCode

function pancake_sort(arr::Vector{Int})
    len = length(arr)
    res = Int[]
    for i in len:-1:1
        v = @view(arr[1:i])
        agm = argmax(v)
        if i != agm
            append!(res, (agm, i))
            pancake_sort!(arr, (agm, i))
        end
    end
    return res
end
function pancake_sort!(arr::Vector{Int}, ops)
    for op in ops
        reverse!(@view(arr[1:op]))
    end
    return arr
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

