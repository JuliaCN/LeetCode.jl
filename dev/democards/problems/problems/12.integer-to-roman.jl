# @lc code=start
using LeetCode
function int_to_roman(num::Int)::String
    table = ("IVX", "XLC", "CDM", "M--")
    function get_num(n::Int, st::String)::String
        I, V, X = st
        0 <= n <= 3 && return I^n
        n == 4 && return I * V
        5 <= n <= 8 && return V * I^(n - 5)
        return I * X
    end
    return join(reverse!([get_num(n, table[i]) for (i, n) in enumerate(digits(num))]))
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

