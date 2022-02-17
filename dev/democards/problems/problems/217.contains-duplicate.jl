# @lc code=start
using LeetCode

function contains_duplicate(nums::Vector{Int})::Bool
    hash_table = Int[]
    for i in nums
        !(i in hash_table) ? push!(hash_table, i) : return true
    end
    return false
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

