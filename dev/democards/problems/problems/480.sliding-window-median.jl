# @lc code=start
using LeetCode

function median_sliding_window(nums::Vector{Int}, k::Int)
    tree = AVLTree{Tuple{Int, Int}}()
    res = Float64[]
    for i in 1:length(nums)
        push!(tree, (nums[i], i))
        if i ≥ k
            push!(res, (tree[k ÷ 2 + 1][1] + tree[(k - 1) ÷ 2 + 1][1]) / 2)
            delete!(tree, (nums[i - k + 1], i - k + 1))
        end
    end
    res
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

