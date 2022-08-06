# @lc code=start
using LeetCode
function min_subsequence(nums::Vector{Int})
    sort!(nums; rev=true)
    half = sum(nums) >> 1
    res, total = Int[], 0
    for num in nums
        total += num
        push!(res, num)
        total > half && return res
    end
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

