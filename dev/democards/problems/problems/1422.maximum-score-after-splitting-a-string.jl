# @lc code=start
using LeetCode

function max_score(s::AbstractString)
    numofones = 0
    maxscore = score = (first(s) == '0') + (last(s) == '1')
    for i in s[2:(end - 1)]
        if i == '1'
            numofones += 1
            score -= 1
        else
            score += 1
        end
        maxscore = max(maxscore, score)
    end
    return maxscore + numofones
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

