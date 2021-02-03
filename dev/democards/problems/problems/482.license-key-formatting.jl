# @lc code=start
using LeetCode

function license_key_formatting(S::String, K::Int)
    res = ""
    cnt = 0
    for i in length(S):-1:1
        if cnt == K
            res *= '-'
            cnt = 0
        end
        if S[i] != '-'
            res *= uppercase(S[i])
            cnt += 1
        end
    end
    reverse(res)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

