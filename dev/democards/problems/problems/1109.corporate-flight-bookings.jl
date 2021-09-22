# @lc code=start
using LeetCode

function corp_flight_bookings(bookings::Vector{Vector{Int}}, n::Int)
    res = fill(0, n + 1)
    for b in bookings
        res[b[1]] += b[3]
        res[b[2] + 1] -= b[3]
    end
    cumsum!(res, res)
    @view(res[1:n])
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

