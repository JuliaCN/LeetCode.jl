# @lc code=start
using LeetCode

min_flip(a, b, c) = min_flip(a|>Int32, b|>Int32, c|>Int32)
function min_flip(a::Int32, b::Int32, c::Int32)
    sa, sb, sc = bitstring.([a, b, c])
    res = 0
    for i in 1:32
        if sc[i] == '1'
            (sa[i] == '0' == sb[i]) && (res += 1)
        else
            res += (sa[i] == '1') + (sb[i] == '1')
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

