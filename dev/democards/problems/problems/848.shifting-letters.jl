# @lc code=start
using LeetCode

function shifting_letters(s::String, shift::Vector{Int})::String
    shift = cumsum(@view(shift[end:-1:1]))
    res = codeunits(s)[:]
    for i in 1:length(shift)
        res[i] += shift[end - i + 1]
    end
    return String(res)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

