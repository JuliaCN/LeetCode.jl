# @lc code=start
using LeetCode

function buddy_strings(A::String, B::String)::Bool
    if length(A) == length(B)
        different_pairs = Pair{Char,Char}[]
        for (a, b) in zip(A, B)
            if a != b
                push!(different_pairs, a => b)
            end
        end
        if length(different_pairs) == 0
            # check if A contains at least 2 duplicate letters
            length(Set(A)) < length(A)
        elseif length(different_pairs) == 2
            ((x, y), (z, w)) = different_pairs
            x == w && y == z
        else
            false
        end
    else
        false
    end
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

