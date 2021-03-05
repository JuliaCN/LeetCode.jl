# @lc code=start
using LeetCode

function max_envelopes(envelopes::Vector{Vector{Int}})
    isempty(envelopes) && return 0
    len = length(envelopes)
    sort!(envelopes, by = x -> (x[1], -x[2]))
    dp = [envelopes[1][2]]
    for envo in @view(envelopes[2:end])
        if envo[2] > dp[end]
            push!(dp, envo[2])
        else
            dp[searchsortedfirst(dp, envo[2])] = envo[2]
        end
    end
    length(dp)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

