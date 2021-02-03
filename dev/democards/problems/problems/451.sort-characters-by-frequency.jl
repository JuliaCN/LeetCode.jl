# @lc code=start
using LeetCode

function frequency_sort(s::String)
    u_vec = codeunits(s)[:]
    freq = fill(0, 128)
    for n in codeunits(s)
        freq[n] += 1
    end
    sort!(u_vec; by=x -> freq[x], rev = true)
    String(u_vec)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

