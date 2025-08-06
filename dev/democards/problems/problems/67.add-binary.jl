# @lc code=start
using LeetCode

function add_binary(a::String, b::String)

    num1 = parse(Int64, a; base=2)
    num2 = parse(Int64, b; base=2)

    sum = num1 + num2

    return string(sum, base=2)

end


# add your code here:
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

