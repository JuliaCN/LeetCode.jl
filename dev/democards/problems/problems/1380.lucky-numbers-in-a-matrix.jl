# @lc code=start
using LeetCode

function lucky_numbers(mat::Matrix{Int})::Vector{Int}
    amax = argmin(mat; dims=1)
    amin = argmax(mat; dims=2)
    return mat[intersect(amax, amin)]
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

