# @lc code=start
using LeetCode

function combination_sum3(k::Int, n::Int)
    function combination_sum3(k::Int, n::Int, s::Int)::Vector{Vector{Int}}
        if s + k - 1 > 9 || sum(s:(s + k - 1)) > n
            return []
        elseif k == 1 && s == n
            return [[n]]
        end
        choose_s = combination_sum3(k - 1, n - s, s + 1)
        notchoose_s = combination_sum3(k, n, s + 1)
        return [[[s, cs...] for cs in choose_s]..., notchoose_s...]
    end
    return combination_sum3(k, n, 1)
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

