# @lc code=start
using LeetCode

function countandsay(n::Int)

    n == 1 && return "1"

    previous_term = countandsay(n - 1)

    current_term = ""
    count = 0
    current_char = previous_term[1]

    for char in previous_term
        if char == current_char
            count += 1
        else
            current_term *= string(count) * current_char
            current_char = char
            count = 1
        end
    end

    current_term * string(count) * current_char
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

