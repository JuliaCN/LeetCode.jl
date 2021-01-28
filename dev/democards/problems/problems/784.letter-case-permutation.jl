# @lc code=start
using LeetCode

function letter_case_permutation(s::String)
    ans = [""]
    for i in s
        if isletter(i)
            tmp = ans[:]
            ans .*= lowercase(i)
            tmp .*= uppercase(i)
            append!(ans, tmp)
        else
            ans .*= i
        end
    end
    ans
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

