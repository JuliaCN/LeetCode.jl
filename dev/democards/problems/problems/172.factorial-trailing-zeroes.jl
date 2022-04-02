# @lc code=start
using LeetCode

# simulate Mathematica's function NestWhileList
function nest_while_list(f::Function, val::T, chk::Function)::Vector{T} where {T}
    res = [val]
    while chk(val)
        val = f(val)
        push!(res, val)
    end
    return res
end

trailing_zeroes(n::Int) = sum(nest_while_list(i -> i ÷ 5, n ÷ 5, >(1)))
# equivalent to the following
# function trailing_zeroes(n::Int)::Int
#     res = 0
#     while n >=5
#         n ÷= 5
#         res += n
#     end
#     res
# end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

