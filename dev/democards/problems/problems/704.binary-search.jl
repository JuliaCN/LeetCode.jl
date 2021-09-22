# @lc code=start
using LeetCode

function search704(nums::Vector{Int}, target::Int)
    res = searchsortedfirst(nums, target)
    nums[res] == target ? res : 0
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

