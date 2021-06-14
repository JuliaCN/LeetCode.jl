# @lc code=start
using LeetCode

function can_measure_water(jug1_cap::Int, jug2_cap::Int, target::Int)
    target > jug1_cap + jug2_cap && return false
    return target % gcd(jug2_cap, jug1_cap) == 0 ? true : false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

