# @lc code=start
using LeetCode

function longest_substring_395(s::String, k::Int)
    function dfs(l::Int, r::Int)
        l > r && return 0
        cnt = counter(SubString(s, l, r))
        split_set = Int[]
        for i in l:r
            (cnt[s[i]] < k) && push!(split_set, i)
        end
        isempty(split_set) && return r - l + 1
        lft, res = l, 0
        for rt in split_set
            res = max(res, dfs(lft, rt - 1))
            lft = rt + 1
        end
        res
    end
    dfs(1, length(s))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

