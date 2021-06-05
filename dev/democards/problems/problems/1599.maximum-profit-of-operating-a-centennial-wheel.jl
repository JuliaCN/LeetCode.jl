# @lc code=start
using LeetCode

function min_operations_max_profit(customers::Vector{Int}, boarding_cost::Int, running_cost::Int)
    prof, maxp, res, wait_cnt = 0, 0, -1, 0
    turn = 1
    while wait_cnt != 0 || turn <= length(customers)
        wait_cnt += turn <= length(customers) ? customers[turn] : 0
        up_cnt = min(wait_cnt, 4)
        wait_cnt -= up_cnt
        prof += up_cnt * boarding_cost - running_cost
        if prof > maxp
            maxp = prof
            res = turn
        end
        turn += 1
    end
    return res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

