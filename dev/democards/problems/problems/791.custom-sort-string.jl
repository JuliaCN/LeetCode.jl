# @lc code=start
using LeetCode

function custom_sort_string(S::String, T::String)
    letter_rank = fill(0, 128)
    for (idx, ch) in enumerate(codeunits(S))
        letter_rank[ch] = idx
    end
    u = codeunits(T)[:]
    sort!(u, by = x -> letter_rank[x])
    String(u)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

