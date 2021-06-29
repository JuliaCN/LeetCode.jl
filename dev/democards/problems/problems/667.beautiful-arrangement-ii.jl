# @lc code=start
using LeetCode

function beautiful_arrangement(n, k)
    res = [1:(n-k);]
    i = res[end] + 1
    j = n
    while i < j
        push!(res, j)
        j -= 1
        push!(res, i)
        i += 1
    end
    i == j && push!(res, i)
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

