# @lc code=start
using LeetCode

function find_all_numbers_disappeared_in_an_array(arr::Vector{Int})
    return setdiff(eachindex(arr), arr)
end

# add your code here:
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

