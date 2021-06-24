# @lc code=start
using LeetCode

function complex_number_multiply(num1::String, num2::String)
    num1 = replace(num1, "i" => "im")
    num2 = replace(num2, "i" => "im")
    mult = eval(Meta.parse(num1)) * eval(Meta.parse(num2))
    return "$(mult.re)+$(mult.im)i"
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

