# @lc code=start
using LeetCode

function num_special_equiv_groups(A::Vector{String})
    st = Set{Vector{Int}}()
    res = 0
    for s in A
        cnt = fill(0, 26 * 2)
        for i in 1:length(s)
            cnt[s[i] - 'a' + 1 + (i % 2)] += 1
        end
        !(cnt in st) && push!(st, cnt)
    end
    length(st)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

