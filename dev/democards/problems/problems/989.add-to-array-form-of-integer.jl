# @lc code=start
using LeetCode

function add_to_array_form(num::Vector{Int}, k::Int)::Vector{Int}
    n = length(num)
    i, val, carry = n, 0, 0
    res = Int[]

    while i > 0 || k != 0
        x = i > 0 ? num[i] : 0
        y = k != 0 ? k % 10 : 0

        val = x + y + carry
        append!(res, val % 10)
        carry = val ÷ 10
        i, k = i - 1, k ÷ 10
    end

    if carry > 0
        append!(res, carry)
    end

    return reverse(res)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

