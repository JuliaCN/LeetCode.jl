# @lc code=start
using LeetCode

function can_three_parts_equal_sum(arr::Vector{Int})
    function can_three_parts_equal_sum(arr::AbstractVector{Int}, n::Int)
        targ = sum(arr)
        if targ % n != 0 || length(arr) == 0
            return false
        elseif n == 1
            return true
        end
        targ ÷= n
        acc = 0
        for i in 1:length(arr)
            acc += arr[i]
            if targ == acc
                return can_three_parts_equal_sum(@view(arr[i+1:end]), n-1)
            end
        end
        false
    end
    can_three_parts_equal_sum(arr, 3)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

