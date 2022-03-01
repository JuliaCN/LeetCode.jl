# @lc code=start
using LeetCode

function push_dominoes(dominoes::String)::String
    ans = ""
    rules = ("R.L" => "T", ".L" => "LL", "R." => "RR", "T" => "R.L")
    while dominoes != ans
        ans = dominoes
        dominoes = foldl(replace, [dominoes, rules...])
    end
    return ans
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

