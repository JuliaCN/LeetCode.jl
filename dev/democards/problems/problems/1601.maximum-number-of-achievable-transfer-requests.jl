# @lc code=start
using LeetCode

using DataStructures
function maximum_requests(::Int, requests::Vector{Vector{Int}})::Int
    function is_valid_request(req)
        return counter(requests[i][1] for i in req) == counter(requests[i][2] for i in req)
    end
    ans, m = 0, length(requests)
    for k in 1:(1 << m)
        req = filter(i -> isodd(k >> (i - 1)), 1:m)
        ans = length(req) > ans && is_valid_request(req) ? length(req) : ans
    end
    return ans
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

