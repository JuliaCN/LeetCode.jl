# @lc code=start
using LeetCode

function equations_possible(equations::Vector{String})
    disjs = DisjointSets{Char}('a':'z')
    for eq in equations
        eq[2] == '!' && continue
        union!(disjs, eq[1], eq[4])
    end
    for eq in equations
        eq[2] == '=' && continue
        in_same_set(disjs, eq[1], eq[4]) && return false
    end
    return true
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

