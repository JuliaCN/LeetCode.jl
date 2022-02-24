# @lc code=start
using LeetCode

function get_sum371(a::Int, b::Int)::Int
    while b != 0
        carry = (a & b) << 1
        a = a ⊻ b
        b = carry
    end
    a
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

