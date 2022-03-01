# @lc code=start
using LeetCode

function is_one_bit_character(bits::Vector{Int})::Bool
    pos = findlast(x -> x == 0, @view bits[1:(end - 1)])
    pos === nothing && return length(bits) % 2 == 1
    return (length(bits) - pos) % 2 == 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

