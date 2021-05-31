# @lc code=start
using LeetCode

function find_judge(N::Int, trust::Vector{Vector{Int}})
    cnt = fill(0, N)
    for t in trust
        cnt[t[1]] -= 1
        cnt[t[2]] += 1
    end
    res = findfirst(==(N - 1), cnt)
    return isnothing(res) ? -1 : res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

