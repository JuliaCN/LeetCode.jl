# @lc code=start
using LeetCode

function flip_and_invert_image(A::Vector{Vector{Int}})::Vector{Vector{Int}}
    m = length(A)
    for i = 1:m
        reverse!(A[i]) .⊻= 1
    end

    return A
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

