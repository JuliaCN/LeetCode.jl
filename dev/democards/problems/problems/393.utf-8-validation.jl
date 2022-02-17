# @lc code=start
using LeetCode

# Automation
function valid_utf8(data::Vector{Int})::Bool
    # 1 represents 0xxx.., 2 represents 10xx.., 3,4,5 similarly, 6 represents error
    switch(num::Int) = num >= 248 ? 6 : findfirst('0', bitstring(Int16(num))[(end - 7):end])
    # 1 represents start, 2 represents 2-byte(need one more byte), 3, 4 similarly, 5 represents fail
    state = 1
    state_shift = Dict{Int,Vector{Int}}(1 => [1, 5, 2, 3, 4, 5])
    for i in 2:4
        state_shift[i] = [5, i - 1, 5, 5, 5, 5]
    end
    for num in data
        state = state_shift[state][switch(num)] ## new state
        state == 5 && return false
    end
    return state == 1
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

