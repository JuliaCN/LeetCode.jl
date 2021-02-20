# @lc code=start
using LeetCode

function is_rational_equal(s::String, t::String)
    function to_rational(s::String)::Rational
        pos1, pos2 = findfirst('.', s), findfirst('(', s)
        (pos1 === nothing) && return parse(Int, s)
        (pos1 == length(s)) && return parse(Int, s[1:end-1])
        pos2 === nothing && return parse(Int, s[1:pos1-1]) + parse(Int, s[pos1 + 1:end]) // 10 ^ (length(s) - pos1)
        pos3 = findlast(')', s)
        int_part = parse(Int, s[1:pos1-1]) |> Rational
        nr_part = pos1 == pos2 - 1 ? 0 : parse(Int, s[pos1+1:pos2-1]) // 10 ^ (pos2 - pos1 - 1)
        rp_part = parse(Int, s[pos2+1:pos3-1]) // (10 ^ (pos3 - pos2 - 1) - 1) // 10 ^ (pos2 - pos1 - 1)
        int_part + nr_part + rp_part
    end
    to_rational(s) == to_rational(t)
end
# @lc code=end
is_rational_equal("0.9(9)", "1.")

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

