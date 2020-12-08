# @lc code=start
using LeetCode

function can_complete_circuit(gas::Vector{Int}, cost::Vector{Int})
    gas .-= cost
    accumulate!(+, gas, gas)
    if gas[end] < 0
        return -1
    end
    return argmin(gas) % length(gas)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

