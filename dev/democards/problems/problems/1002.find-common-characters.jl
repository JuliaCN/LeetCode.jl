# @lc code=start
using LeetCode

function common_chars(A::Vector{String})
    cnt = counter(A[1])
    for i in 2:length(A)
        tmp_cnt = counter(A[i])
        for k in union(keys(tmp_cnt), keys(cnt))
            cnt[k] = min(cnt[k], tmp_cnt[k])
        end
    end
    vcat([fill(k, v) for (k, v) in cnt if v > 0]...)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

