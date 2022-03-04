# @lc code=start
using LeetCode

function reverse_only_letters(s::String)
    chars = codeunits(s)[:]
    letters = @view(chars[isletter.(Char.(chars))])
    reverse!(letters)
    return String(chars)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

