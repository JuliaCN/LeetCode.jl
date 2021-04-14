# @lc code=start
using LeetCode

function trap_rain(height::Vector{Int})::Int
    csum = cumsum(height)
    pushfirst!(csum, 0)
    max_pos = argmax(height)
    len = length(height)
    res = 0
    r = 1
    for i in 2:max_pos
        if height[i] >= height[r]
            res += (i > r + 1) * (height[r] * (i - r) - (csum[i] - csum[r]))
            r = i
        end
    end
    l = len
    for j in (len - 1):-1:max_pos
        if height[j] >= height[l]
            res += (j < l - 1) * (height[l] * (l - j) - (csum[l + 1] - csum[j + 1]))
            l = j
        end
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

