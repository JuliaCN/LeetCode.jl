# @lc code=start
using LeetCode

function super_pow(a::Int, b::Vector{Int})
    md, ϕ = 1337, 1140
    n = length(b)
    n == 0 && return 1
    e = 0
    a %= md
    for digit in b
        e = (10 * e + digit) % ϕ
    end
    powermod(a, e, md)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

