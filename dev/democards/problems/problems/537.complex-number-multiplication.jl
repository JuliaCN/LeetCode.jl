# @lc code=start
using LeetCode

function complex_number_multiply(num1::String, num2::String)
    Ct = Complex{Int}
    mult = parse(Ct, num1) * parse(Ct, num2)
    return "$(mult.re)+$(mult.im)i"
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

