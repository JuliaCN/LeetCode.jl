# @lc code=start
using LeetCode

function num_rescue_boats(people::Vector{Int}, limit::Int)
    sort!(people)
    a, b = 1, length(people)
    res = 0
    while a <= b
        res += 1
        a == b && break
        b -= 1
        (people[a] + people[b] <= limit) && (a += 1)
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

