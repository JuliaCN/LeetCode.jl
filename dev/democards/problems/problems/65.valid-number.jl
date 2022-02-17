# @lc code=start
using LeetCode

# Automation
function is_number_65(s::String)::Bool
    # initialize state
    state = "start"
    # recognize input state
    function switch(c::Char)::Int
        isdigit(c) && return 1
        c == '.' && return 2
        c in "eE" && return 3
        c in "+-" && return 4
        return 5
    end
    state_shift = Dict{String,Vector{String}}(
        "start" => ["num", "dot_part", "error", "sign", "error"],
        "num" => ["num", "dot_num", "e_part", "error", "error"],
        "dot_num" => ["dot_num", "error", "e_part", "error", "error"],
        "e_num" => ["e_num", "error", "error", "error", "error"],
        "sign" => ["num", "dot_part", "error", "error", "error"],
        "dot_part" => ["dot_num", "error", "error", "error", "error"],
        "e_part" => ["e_num", "error", "error", "e_sign", "error"],
        "e_sign" => ["e_num", "error", "error", "error", "error"],
    )
    for c in s
        state = state_shift[state][switch(c)]
        state == "error" && return false
    end
    return state in ["num", "dot_num", "e_num"]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

