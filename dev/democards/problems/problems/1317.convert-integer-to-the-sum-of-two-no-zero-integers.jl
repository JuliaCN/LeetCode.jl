# @lc code=start
using LeetCode

function get_no_zero_integers(n::Int)::Vector{Int}
    for i in 1:(n - 1)
        if !('0' in string(i)) && !('0' in string(n - i))
            return [i, n - i]
        end
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

