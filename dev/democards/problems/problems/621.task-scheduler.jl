# @lc code=start
using LeetCode

function least_interval(tasks::Vector{Char}, n::Int)::Int
    counter = fill(0, 26)
    for ch in tasks
        counter[UInt8(ch) - 0x40] += 1
    end
    sort!(counter, rev = true)
    res = (n + 1) * counter[1] - n
    for i in 2:26
        if counter[i] == counter[i - 1]
            res += 1
        else
            break
        end
    end
    return max(length(tasks), res)
end
least_interval(['A','A','A','B','B','B'], 2)
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

