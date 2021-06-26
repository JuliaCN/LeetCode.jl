# @lc code=start
using LeetCode

function fraction_addition(expression::String)
    expression = replace(expression, "/" => "//")
    res = eval(Meta.parse(expression))
    return "$(res.num)/$(res.den)"
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

