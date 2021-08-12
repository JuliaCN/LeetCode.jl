# @lc code=start
using LeetCode

function reordered_power_of2(n::Integer)
    cntr1 = OffsetArray(fill(0, 10), -1)
    cntr2 = OffsetArray(fill(0, 10), -1)
    function count_num!(cntr, n::Integer)
        fill!(cntr, 0)
        for d in digits(n)
            cntr[d] += 1
        end
        cntr
    end
    count_num!(cntr1, n)
    for i in 0:31
        (cntr1 == count_num!(cntr2, 1 << i)) && return true
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

