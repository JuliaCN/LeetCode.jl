# @lc code=start
using LeetCode

function rotate_arr(nums::Vector{Int}, k::Int)
    k %= length(nums)
    reverse!(nums)
    reverse!(@view nums[1:k])
    reverse!(@view nums[k+1:end])
    nums
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

