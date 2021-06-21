# @lc code=start
using LeetCode

function original_digits(s::String)
    cnt = counter(s)
    n0 = cnt['z']
    n2 = cnt['w']
    n8 = cnt['g']
    n6 = cnt['x']
    n3 = cnt['t'] - n2 - n8
    n4 = cnt['r'] - n3 - n0
    n7 = cnt['s'] - n6
    n1 = cnt['o'] - n4 - n2 - n0
    n5 = cnt['v'] - n7
    n9 = cnt['i'] - n8 - n6 - n5
    ns = (n0, n1, n2, n3, n4, n5, n6, n7, n8, n9)
    return join(string(i - 1)^n for (i, n) in enumerate(ns))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

