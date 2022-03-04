# @lc code=start
using LeetCode
using DataStructures

# Double Pointers
function check_inclusion(s1::String, s2::String)::Bool
    equal2c1(c::Accumulator) = all(c[i] == c1[i] for i in keys(c1))
    c1, n1, n2 = counter(s1), length(s1), length(s2)
    n2 < n1 && return false
    c2 = counter(s2[1:n1])
    equal2c1(c2) && return true
    for (i, j) in zip(1:(n2 - n1), (n1 + 1):n2)
        c2[s2[i]] -= 1
        c2[s2[j]] += 1
        equal2c1(c2) && return true
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

