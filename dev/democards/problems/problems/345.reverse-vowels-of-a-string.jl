# @lc code=start
using LeetCode

function reverse_vowels(s::String)
    in_chars = codeunits(s)[:]
    indices = Int[]
    vowels = Set(['a', 'e', 'i', 'o', 'u'])
    for i in 1:length(s)
        s[i] ∈ vowels && push!(indices, i)
    end
    reverse!(@view(in_chars[indices]))
    in_chars |> pointer |> unsafe_string
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

