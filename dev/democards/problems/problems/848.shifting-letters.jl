# @lc code=start
using LeetCode

function shifting_letters(s::String, shift::Vector{Int})::String
    for i in length(shift):-1:2
        shift[i - 1] += shift[i]
    end
    res = codeunits(s)[:]
    for i in 1:length(shift)
        res[i] += shift[i]
    end
    return String(res)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

