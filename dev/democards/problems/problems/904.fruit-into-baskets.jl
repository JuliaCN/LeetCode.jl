# @lc code=start
using LeetCode

function total_fruit(fruits::Vector{Int})
    fruits .+= 1
    n = length(fruits)
    cnt = fill(0, n)
    type_cnt = 0
    res = 0
    j = 1
    for i in 1:n
        if (cnt[fruits[i]] += 1) == 1
            type_cnt += 1
        end
        while type_cnt > 2
            if (cnt[fruits[j]] -= 1) == 0
                type_cnt -= 1
            end
            j += 1
        end
        res = max(res, i - j + 1)
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

