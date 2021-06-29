# @lc code=start
using LeetCode

function construct_maximum_binary_tree(nums::AbstractVector{Int})
    isempty(nums) && return nothing
    max_idx = argmax(nums)
    return TreeNode(nums[max_idx],
                    construct_maximum_binary_tree(@view(nums[1:(max_idx - 1)])),
                    construct_maximum_binary_tree(@view(nums[(max_idx + 1):end])))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

